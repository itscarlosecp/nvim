local awful = require "awful"
local wibox = require "wibox"
local gears = require "gears"

return function(s)
  local bar = awful.wibar {screen = s}

  local taglist =
    awful.widget.taglist {
    screen = s,
    filter = awful.widget.taglist.filter.all
  }

  local test =
    wibox.widget {
    settext = function(self, text)
      self.text = text
    end,
    widget = wibox.widget.textbox
  }

  bar:setup {
    layout = wibox.layout.fixed.horizontal,
    taglist,
    wibox.widget.textclock()
    -- awful.widget.watch("echo Carlos")
  }
end
