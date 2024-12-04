local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- Define colors
Color.new("white", "#ffffff")          -- White for cursor or highlights
Color.new("silver", "#c0c0c0")         -- Silver for backgrounds
Color.new("blackgray", "#444444")      -- Black-gray for text or subtle highlights
Color.new("black", "#000000")          -- Pure black for text
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
Color.new("gray", "#666666")           -- Gray for inactive status line text
Color.new("background", "#111111")    -- Default editor background

-- Editor normal colors
Group.new("Normal", c.white, c.background)

-- Status Line
Group.new("StatusLine", c.black, c.silver, s.bold) -- Active status line: black text, silver background
Group.new("StatusLineNC", c.gray, c.silver)       -- Inactive status line: gray text, silver background

-- Line Numbers
Group.new("LineNr", c.silver, c.background)           -- Default line numbers: silver text on editor background
Group.new("CursorLineNr", c.white, c.background, s.bold) -- Line number under cursor: white text on editor background

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
Group.new("CursorLine", nil, c.gray)  -- Highlight the current line
Group.new("CursorLineNr", c.white, c.background)  -- Current line number

-- Visual mode
Group.new("Visual", nil, c.gray)

-- Lua function calls
Group.new("@function.call.lua", c.blue:dark(), nil, nil)

-- Add additional highlight groups as needed
