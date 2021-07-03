local gl = require'galaxyline'
local condition = require'galaxyline.condition'

local colors = {
	fg = '#EAEAEA',
	bg = '#282A36',
	normal = '#5FAFD7',
	insert = '#F44747',
	visual = '#EAEAEA',
	command = '#8D8DA8'
}

gl.section.left[1] = {
	ViMode = {
		provider = function()
			local mode_colors = {
				n = colors.normal,
				no = colors.normal,
				v = colors.visual,
				V = colors.visual,
				s = colors.visual,
				S = colors.visual,
				i = colors.insert,
				ic = colors.insert,
				ix = colors.insert,
				R = colors.visual,
				Rc = colors.visual,
				Rv = colors.visual,
				Rx = colors.visual,
				c = colors.command,
				cv = colors.command,
				ce = colors.command,
				r = colors.visual,
				rm = colors.visual,
				['r?'] = colors.visual,
				['!'] = colors.command,
				t = colors.command
			}
			vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_colors[vim.fn.mode()])
			return '▊'
		end,
		separator = ' ',
		separator_highlight = { 'NONE', colors.bg },
		highlight = { colors.fg, colors.bg },
	}
}

gl.section.left[2] = {
	GitBranch = {
		condition = condition.check_git_workspace,
		provider = 'GitBranch',
		icon = ' ',
		separator = ' ',
		separator_highlight = { 'NONE', colors.bg },
		highlight = { colors.fg, colors.bg },
	}
}

gl.section.left[3] = {
	FileName = {
		condition = condition.buffer_not_empty,
		provider = 'FileName',
		icon = ' ',
		separator = ' ',
		separator_highlight = { 'NONE', colors.bg },
		highlight = { colors.fg, colors.bg },
	}
}
