local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- Define colors
Color.new("white", "#ffffff")  -- White background for the status line
Color.new("black", "#000000")  -- Black text for the status line
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
Color.new("gray", "#666666")   -- Gray for inactive status line text
Color.new("background", "#111111")  -- Default background

-- Define highlight groups
Group.new("Normal", c.white, c.background)

-- Status Line colors
Group.new("StatusLine", c.black, c.white, s.bold) -- Active status line: black text, white background
Group.new("StatusLineNC", c.gray, c.white)       -- Inactive status line: gray text, white background

-- Syntax and highlights
Group.new("@constant", c.orange, nil, s.none)
Group.new("@function", c.yellow, nil, s.none)
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.violet, nil, s.none)
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@property", c.blue)
Group.new("@variable", c.white, nil)
Group.new("@variable.builtin", c.purple:light():light(), g.Normal)

-- Cursor line
Group.new("CursorLine", nil, c.gray)
Group.new("CursorLineNr", c.yellow, c.gray)

-- Visual mode
Group.new("Visual", nil, c.gray)

-- Lua function calls
Group.new("@function.call.lua", c.blue:dark(), nil, nil)

-- Add additional highlight groups as needed
