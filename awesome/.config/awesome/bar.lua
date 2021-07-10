local awful = require "awful"
local wibox = require "wibox"
-- Widgets
local logout_menu = require "awesome-wm-widgets.logout-menu-widget.logout-menu"

return function(s)
	local bar = awful.wibar { 
		screen = s,
		bg = "#1a1b26",
		height = 24
	}

	local taglist = awful.widget.taglist {
		screen = s,
		filter = awful.widget.taglist.filter.all
	}

	local systray = wibox.container.margin(wibox.widget.systray(), 0, 0, 4, 4)

	local separator = " "

	bar:setup { 
		taglist,
		wibox.widget.textbox(" "),
		{
			awful.widget.watch("date '+%d/%m/%Y  %H:%M'"),
			wibox.widget.textbox(separator),
			systray,
			wibox.widget.textbox(separator),
			logout_menu {
				onlock = function()
					awful.spawn("vlock")
				end
			},
			wibox.widget.textbox(separator),
			layout = wibox.layout.fixed.horizontal,
		},
		layout = wibox.layout.align.horizontal,
	}
end
