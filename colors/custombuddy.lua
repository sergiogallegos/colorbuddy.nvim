local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- Define colors
Color.new("white", "#ffffff")          -- White for highlights
Color.new("silver", "#c0c0c0")         -- Silver for subtle highlights
Color.new("darkgray", "#333333")       -- Dark gray for line numbers and `~` symbols
Color.new("orange", "#de935f")         -- Orange for cursor line number
Color.new("black", "#000000")          -- Black text
Color.new("red", "#cc6666")
Color.new("pink", "#fef601")
Color.new("green", "#99cc99")
Color.new("yellow", "#f8fe7a")
Color.new("blue", "#81a2be")
Color.new("aqua", "#8ec07c")
Color.new("cyan", "#8abeb7")
Color.new("purple", "#8e6fbd")
Color.new("violet", "#b294bb")
Color.new("brown", "#a3685a")
Color.new("background", "#111111")    -- Default editor background

-- Editor normal colors
Group.new("Normal", c.white, c.background)

-- Status Line
Group.new("StatusLine", c.black, c.silver, s.bold) -- Active status line: black text, silver background
Group.new("StatusLineNC", c.darkgray, c.silver)   -- Inactive status line: dark gray text, silver background

-- Line Numbers
Group.new("LineNr", c.darkgray, c.background)         -- Default line numbers: dark gray text on editor background
Group.new("CursorLineNr", c.orange, c.background, s.bold) -- Line number under cursor: orange text on editor background

-- NonText (e.g., `~` symbols in empty lines)
Group.new("NonText", c.darkgray, c.background) -- Same color as line numbers

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
Group.new("CursorLine", nil, c.darkgray)  -- Highlight the current line
Group.new("CursorLineNr", c.orange, c.background) -- Current line number in orange

-- Visual mode
Group.new("Visual", nil, c.darkgray)

-- Lua function calls
Group.new("@function.call.lua", c.blue:dark(), nil, nil)

-- Add additional highlight groups as needed
