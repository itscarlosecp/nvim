local indent_level = vim.api.nvim_buf_get_option(0, "tabstop")

local prettier = function()
    -- npm i -g prettier
    return {
        exe = "prettier",
        args = {
            "--stdin-filepath",
            vim.api.nvim_buf_get_name(0),
            "--single-quote",
            "--tab-width",
            vim.api.nvim_buf_get_option(0, "tabstop"),
            "--no-semi",
            "--jsx-single-quote",
            "--trailing-comma none"
        },
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
        typescriptreact = {prettier}
    }
}

vim.api.nvim_exec(
    [[
  autocmd FileType js,ts,jsx,tsx let b:autoformat_autoindent = 0
  autocmd FileType js,ts,jsx,tsx let b:autoformat_retab = 0
  autocmd FileType js,ts,jsx,tsx let b:autoformat_remove_trailing_spaces = 0
  au BufWrite * :Autoformat
]],
    true
)

vim.api.nvim_exec(
    [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.ts,*.jsx,*.tsx FormatWrite
augroup END
]],
    true
)
