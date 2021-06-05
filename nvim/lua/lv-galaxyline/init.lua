local gl = require"galaxyline"
local condition = require"galaxyline.condition"

local colors = {
	bg = "#282A36",
	yellow = "#DCDCAA",
	dark_yellow = "#D7BA7D",
	cyan = "#4EC9B0",
	green = "#608B4E",
	light_green = "#B5CEA8",
	string_orange = "#CE9178",
	orange = "#CE9178",
	purple = "#C586C0",
	magenta = "#D16D9E",
	grey =	"#CCCCCC",
	blue = "#5fafd7",
	vivid_blue = "#4FC1FF",
	light_blue = "#9CDCFE",
	red = "#D16969",
	error_red = "#F44747",
	info_yellow = "#FFCC66"
}

gl.short_line_list = {"NvimTree", "vista", "dbui", "packer"}

gl.section.left[1] = {
	ViMode = {
		provider = function()
			local mode_color = {
				n = colors.blue,
				i = colors.green,
				v = colors.purple,
				V = colors.purple,
				c = colors.magenta,
				no = colors.blue,
				s = colors.orange,
				S = colors.orange,
				[''] = colors.orange,
				ic = colors.yellow,
				R = colors.red,
				Rv = colors.red,
				cv = colors.blue,
				ce = colors.blue,
				r = colors.cyan,
				rm = colors.cyan,
				['r?'] = colors.cyan,
				['!'] = colors.blue,
				t = colors.blue
			}
			vim.api.nvim_command("hi GalaxyViMode guifg=" .. mode_color[vim.fn.mode()])
			return "▊ "
		end,
		highlight = { colors.red, colors.bg }
	}
}

gl.section.left[2] = {
	GitIcon = {
		provider = function()
			return " "
		end,
		condition = condition.check_git_workspace,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.orange, colors.bg }
	}
}

gl.section.left[3] = {
    GitBranch = {
        provider = "GitBranch",
        condition = condition.check_git_workspace,
        separator = " ",
        separator_highlight = { "NONE", colors.bg },
        highlight = { colors.grey, colors.bg }
    }
}
