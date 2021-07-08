vim.g.formatdef_prettier = '"prettier --single-quote"'
vim.g.formatters_javascript = {"prettier"}
vim.g.formatters_javascriptreact = {"prettier"}
vim.g.formatters_typescript = {"prettier"}
vim.g.formatters_typescriptreact = {"prettier"}

vim.cmd("au BufWrite * :Autoformat")
