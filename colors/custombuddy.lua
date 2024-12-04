require("colorbuddy").colorscheme("custombuddy")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- New color palette
Color.new("white", "#e6e1dc")
Color.new("red", "#f07178")
Color.new("pink", "#ff79c6")
Color.new("green", "#c3e88d")
Color.new("yellow", "#ffcb6b")
Color.new("blue", "#82aaff")
Color.new("aqua", "#89ddff")
Color.new("cyan", "#80cbc4")
Color.new("purple", "#c792ea")
Color.new("violet", "#bb80b3")
Color.new("orange", "#f78c6c")
Color.new("brown", "#ab7967")

Color.new("seagreen", "#4caf50")
Color.new("turquoise", "#00bcd4")

-- Background and grays
local background_string = "#1e1e2e"
Color.new("background", background_string)
Color.new("gray0", "#292d3e")

-- Group definitions
Group.new("Normal", c.white, c.background)

Group.new("@constant", c.orange, nil, s.none)
Group.new("@function", c.blue, nil, s.none)
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.purple, nil, s.none)
Group.new("@keyword.faded", g.gray0:light(), nil, s.none)
Group.new("@property", c.cyan)
Group.new("@variable", c.white, nil)
Group.new("@variable.builtin", c.violet:light(), g.Normal)

-- Specific styling for Lua functions
Group.new("@function.call.lua", c.cyan:dark(), nil, nil)
