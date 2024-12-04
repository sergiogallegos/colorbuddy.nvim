local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- Existing GruvBuddy colors
Color.new("white", "#f2e5bc")
Color.new("red", "#cc6666")
Color.new("pink", "#fef601")
Color.new("green", "#99cc99")
Color.new("yellow", "#f8fe7a")
Color.new("blue", "#81a2be")
Color.new("aqua", "#8ec07c")
Color.new("cyan", "#8abeb7")
Color.new("purple", "#8e6fbd")
Color.new("violet", "#b294bb")
Color.new("orange", "#de935f")
Color.new("brown", "#a3685a")

Color.new("background", "#111111")
Color.new("gray", "#666666") -- Add gray color
Color.new("gray0", "#333333") -- A darker gray, optional

-- Apply groups to define the theme
Group.new("Normal", c.white, c.background)
Group.new("StatusLine", c.gray, c.background, s.bold) -- Status Line with gray foreground
Group.new("StatusLineNC", c.gray, c.background)      -- Inactive Status Line
Group.new("CursorLine", nil, c.gray0)
Group.new("CursorLineNr", c.yellow, c.gray0)
Group.new("Visual", nil, c.gray)

-- Remaining groups stay the same
Group.new("@constant", c.orange, nil, s.none)
Group.new("@function", c.yellow, nil, s.none)
Group.new("@keyword", c.violet, nil, s.none)
Group.new("@property", c.blue)
Group.new("@variable", c.white, nil)
