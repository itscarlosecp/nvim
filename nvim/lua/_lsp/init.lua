vim.lsp.protocol.CompletionItemKind = {
  "   (Text) ",
  "   (Method)",
  "   (Function)",
  "   (Constructor)",
  " ﴲ  (Field)",
  "[] (Variable)",
  "   (Class)",
  " ﰮ  (Interface)",
  "   (Module)",
  " 襁 (Property)",
  "   (Unit)",
  "   (Value)",
  " 練 (Enum)",
  "   (Keyword)",
  "   (Snippet)",
  "   (Color)",
  "   (File)",
  "   (Reference)",
  "   (Folder)",
  "   (EnumMember)",
  " ﲀ  (Constant)",
  " ﳤ  (Struct)",
  "   (Event)",
  "   (Operator)",
  "   (TypeParameter)"
}

vim.fn.sign_define(
  "LspDiagnosticsSignError",
  {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"}
)
vim.fn.sign_define(
  "LspDiagnosticsSignWarning",
  {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"}
)
vim.fn.sign_define(
  "LspDiagnosticsSignHint",
  {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"}
)
vim.fn.sign_define(
  "LspDiagnosticsSignInformation",
  {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"}
)

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    virtual_text = {
      prefix = "",
      spacing = 0
    },
    signs = true,
    underline = true
  }
)

local configs = {
  json = {
    filetypes = {"json", "jsonc"},
    settings = {
      json = {
        schemas = {
          {
            fileMatch = {"package.json"},
            url = "https://json.schemastore.org/package.json"
          },
          {
            fileMatch = {"jsconfig*.json"},
            url = "https://json.schemastore.org/jsconfig.json"
          },
          {
            fileMatch = {"tsconfig*.json"},
            url = "https://json.schemastore.org/tsconfig.json"
          },
          {
            fileMatch = {
              ".prettierrc",
              ".prettierrc.json",
              "prettier.config.json"
            },
            url = "https://json.schemastore.org/prettierrc.json"
          },
          {
            fileMatch = {".eslintrc", ".eslintrc.json"},
            url = "https://json.schemastore.org/eslintrc.json"
          }
        }
      }
    }
  },
  lua = {
    settings = {
      Lua = {
        diagnostics = {
          globals = {"vim"}
        }
      }
    }
  },
}

local function add_config_safe(custom_config, config_key, fallback)
  local safe_config = fallback
  if custom_config[config_key] ~= nil then
    safe_config = custom_config[config_key]
  end
  return safe_config
end

local installed_servers = require "lspinstall".installed_servers()
local function setup_servers()
  require "lspinstall".setup()

  for _, lang in pairs(installed_servers) do
    local server = require "lspconfig"[lang]
    if configs[lang] ~= nil then
      server.setup {
        filetypes = add_config_safe(configs[lang], "filetypes", server.filetypes),
        on_attach = add_config_safe(configs[lang], "on_attach", server.on_attach),
        root_dir = add_config_safe(configs[lang], "root_dir", server.root_dir),
        settings = add_config_safe(configs[lang], "settings", {})
      }
    else
      server.setup {}
    end
  end
end

setup_servers()

require "lspinstall".post_install_hook = function()
  setup_servers()
  vim.cmd("bufdo e")
end
