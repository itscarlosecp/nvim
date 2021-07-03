local prettier = function()
	return {
		exe = 'prettier',
		args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0), '--single-quote' },
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

require'formatter'.setup {
	loggin = false,
	filetype = {
		-- Wev Develop
		javascript = { prettier },
		javascriptreact = { prettier },
		typescript = { prettier },
		typescriptreact = { prettier },

		-- Linux
		lua = { luafmt }
	}
}
