local tabstop = vim.api.nvim_buf_get_option(0, "tabstop")

local prettier = function()
  return {
    exe = "prettier",
    args = {
      "--stdin-filepath",
      vim.api.nvim_buf_get_name(0),
      "--single-quote",
      "--tab-width",
      tabstop,
      "--no-semi",
      "--jsx-single-quote",
      "--trailing-comma none"
    },
    stdin = true
  }
end

local luafmt = function()
  return {
    exe = "luafmt",
    args = {"--indent-count", 2, "--stdin"},
    stdin = true
  }
end

local black = function()
  return {
    exe = "black",
    args = {"-"},
    stdin = true
  }
end

require "formatter".setup {
  logging = false,
  filetype = {
    -- Wev Develop
    javascript = {prettier},
    javascriptreact = {prettier},
    typescript = {prettier},
    typescriptreact = {prettier},
    -- Lua
    lua = {luafmt},
    -- Python
    python = {black}
  }
}

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.ts,*.jsx,*.tsx FormatWrite
  autocmd BufWritePost *.lua FormatWrite
  autocmd BufWritePost *.py FormatWrite
augroup END
]],
  true
)
