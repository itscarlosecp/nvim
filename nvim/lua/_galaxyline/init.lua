local gl = require "galaxyline"
local condition = require "galaxyline.condition"
local icons = require "galaxyline.provider_fileinfo"

local colors = {
  fg = "#EAEAEA",
  bg = "#282A36",
  normal = "#5FAFD7",
  insert = "#F44747",
  visual = "#EAEAEA",
  command = "#8D8DA8"
}

gl.short_line_list = {"NvimTree"}

table.insert(
  gl.section.left,
  {
    ViMode = {
      provider = function()
        -- Reference: https://vi.stackexchange.com/questions/19247/how-to-get-the-current-mode-in-vim
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
          ["r?"] = colors.visual,
          ["!"] = colors.command,
          t = colors.command
        }
        vim.api.nvim_command("hi GalaxyViMode guifg=" .. mode_colors[vim.fn.mode()])
        return "▊"
      end,
      separator = " ",
      separator_highlight = {"NONE", colors.bg},
      highlight = {colors.fg, colors.bg}
    }
  }
)

table.insert(
  gl.section.left,
  {
    GitBranch = {
      condition = condition.check_git_workspace,
      provider = "GitBranch",
      icon = " ",
      separator = " ",
      separator_highlight = {"NONE", colors.bg},
      highlight = {colors.fg, colors.bg}
    }
  }
)

table.insert(
  gl.section.left,
  {
    FileName = {
      condition = condition.buffer_not_empty,
      provider = "FileName",
      icon = " ",
      separator = " ",
      separator_highlight = {"NONE", colors.bg},
      highlight = {colors.fg, colors.bg}
    }
  }
)

table.insert(
  gl.section.right,
  {
    LspClient = {
      provider = "GetLspClient",
      icon = icons.get_file_icon,
      separator = " ",
      separator_highlight = {"NONE", colors.bg},
      highlight = {colors.fg, colors.bg}
    }
  }
)

table.insert(
  gl.section.right,
  {
    LineColumn = {
      provider = "LineColumn",
      separator = " ",
      separator_highlight = {"NONE", colors.bg},
      highlight = {colors.fg, colors.bg}
    }
  }
)

table.insert(
  gl.section.right,
  {
    LinePercent = {
      provider = "LinePercent",
      separator = " ",
      separator_highlight = {"NONE", colors.bg},
      highlight = {colors.fg, colors.bg}
    }
  }
)

table.insert(
  gl.section.right,
  {
    Space = {
      provider = function()
        return " "
      end,
      separator = " ",
      separator_highlight = {"NONE", colors.bg},
      highlight = {colors.fg, colors.bg}
    }
  }
)
