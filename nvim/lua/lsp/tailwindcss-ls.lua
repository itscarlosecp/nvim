local lspconfig = require 'lspconfig'
local configs = require 'lspconfig/configs'
local util = require"lspconfig".util
local data_path = vim.fn.stdpath('data')

if not lspconfig.tailwindls then configs['tailwindls'] = {default_config = {}} end

lspconfig.tailwindls.setup {
    cmd = {
        "node", data_path .. "/lspinstall/tailwindcss/tailwindcss-intellisense/extension/dist/server/tailwindServer.js",
        "--stdio"
    },
    filetypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},
    init_options = {
        userLanguages = { -- I don't know why but the LSP won't autocomplete the tailwind classes without this
        }
    },
    root_dir = function(fname)
        return util.root_pattern('tailwind.config.js', 'tailwind.config.ts')(fname) or
        util.root_pattern('postcss.config.js', 'postcss.config.ts')(fname) or
        util.find_package_json_ancestor(fname) or
        util.find_node_modules_ancestor(fname) or
        util.find_git_ancestor(fname)
    end,
}
