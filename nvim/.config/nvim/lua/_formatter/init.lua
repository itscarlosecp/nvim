local function prettier()
  return {
    exe = "prettier",
    args = {
      "--stdin-filepath",
      vim.api.nvim_buf_get_name(0),
      "--single-quote"
    },
    stdin = true
  }
end

local function luafmt()
  return {
    exe = "luafmt",
    args = {"--indent-count", 2, "--stdin"},
    stdin = true
  }
end

require "formatter".setup {
  logging = false,
  filetype = {
    css = {prettier},
    html = {prettier},
    javascript = {prettier},
    javascriptreact = {prettier},
    lua = {luafmt},
    typescript = {prettier},
    typescriptreact = {prettier}
  }
}

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.css FormatWrite
  autocmd BufWritePost *.html FormatWrite
  autocmd BufWritePost *.js,*.ts,*.jsx,*.tsx FormatWrite
  " autocmd BufWritePost *.lua FormatWrite
augroup END
]],
  true
)
