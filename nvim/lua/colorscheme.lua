vim.cmd("colorscheme " ..O.colorscheme)

if O.transparency then
	vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
end

