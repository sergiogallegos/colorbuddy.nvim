-- CustomBuddy Prime Variant
-- Inspired by ThePrimeagen's configuration
-- Features: High contrast, bold colors, terminal-friendly

require("colorbuddy").colorscheme("custombuddy-prime")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- =====================
-- Prime-Inspired Color Palette
-- =====================

-- Core colors - Muted Gruvbox colors
Color.new("white", "#d4a574")         -- Muted Gruvbox light text
Color.new("superwhite", "#ebdbb2")     -- Soft white
Color.new("black", "#000000")         -- Pure black
Color.new("darkgray", "#3c3836")      -- Gruvbox dark gray
Color.new("silver", "#8a8a8a")        -- Muted silver
Color.new("silver_text", "#8a8a8a")   -- Muted silver text
Color.new("dark_blue_gray", "#282828") -- Gruvbox dark background
Color.new("transparent", "#000000")   -- Transparent background support

-- Muted Gruvbox accent colors
Color.new("red", "#d75f5f")          -- Muted red
Color.new("pink", "#a89984")         -- Soft pink
Color.new("green", "#8fbc8f")         -- Muted green
Color.new("yellow", "#d4a574")       -- Soft yellow
Color.new("blue", "#6b8bb3")         -- Muted blue
Color.new("aqua", "#6b8bb3")         -- Muted aqua
Color.new("cyan", "#6b8bb3")         -- Muted cyan
Color.new("purple", "#a89984")       -- Soft purple
Color.new("violet", "#a89984")       -- Soft violet
Color.new("orange", "#d4a574")       -- Soft orange
Color.new("brown", "#a89984")        -- Soft brown

-- Muted Gruvbox comment colors
Color.new("seagreen", "#5a5a5a")     -- Muted gray comments
Color.new("turquoise", "#6b8bb3")    -- Muted turquoise

-- Editor background - Authentic Gruvbox dark
local background_string = "#282828"  -- Gruvbox dark background
Color.new("background", background_string)
Color.new("gray0", background_string)

-- =====================
-- Define Highlight Groups
-- =====================

-- Base editor group with high contrast
Group.new("Normal", c.superwhite, c.transparent)

-- High-contrast status line
Group.new("StatusLine", c.black, c.green) -- Black text on green
Group.new("StatusLineNC", c.silver_text, c.transparent, s.bold)

-- High-contrast line numbers
Group.new("LineNr", c.darkgray, c.transparent)
Group.new("CursorLineNr", c.green, c.transparent, s.bold) -- Green current line
Group.new("CursorLine", nil, c.dark_blue_gray:light(0.08))
Group.new("Cursor", c.black, c.superwhite)

-- High-contrast visual selection
Group.new("Visual", nil, c.blue:dark(0.3)) -- Blue selection
Group.new("VisualNOS", nil, c.blue:dark(0.2))

-- High-contrast search
Group.new("Search", c.black, c.yellow) -- Black text on yellow
Group.new("IncSearch", c.black, c.orange) -- Black text on orange
Group.new("CurSearch", c.black, c.green) -- Black text on green
Group.new("MatchParen", c.black, c.cyan, s.bold) -- Black text on cyan

-- High-contrast popup menus
Group.new("Pmenu", c.superwhite, c.transparent)
Group.new("PmenuSel", c.black, c.green) -- Black text on green
Group.new("PmenuSbar", nil, c.transparent)
Group.new("PmenuThumb", nil, c.silver)

-- High-contrast tabs
Group.new("TabLine", c.silver_text, c.transparent)
Group.new("TabLineFill", c.silver, c.transparent)
Group.new("TabLineSel", c.black, c.green, s.bold) -- Black text on green

-- Windows and splits
Group.new("WinSeparator", c.green, c.transparent) -- Green separators
Group.new("VertSplit", c.green, c.transparent)
Group.new("HorizSplit", c.green, c.transparent)

-- Folding
Group.new("FoldColumn", c.darkgray, c.transparent)
Group.new("Folded", c.darkgray, c.dark_blue_gray:light(0.1))

-- Signs and diagnostics
Group.new("SignColumn", c.darkgray, c.transparent)
Group.new("DiagnosticError", c.red, nil, s.bold)
Group.new("DiagnosticWarn", c.orange, nil, s.bold) -- Bold warnings
Group.new("DiagnosticInfo", c.blue, nil, s.bold) -- Bold info
Group.new("DiagnosticHint", c.cyan, nil, s.bold) -- Bold hints

-- =====================
-- Syntax Highlighting
-- =====================

-- High-contrast syntax with bold styling
Group.new("@constant", c.orange, nil, s.bold) -- Bold constants
Group.new("@function", c.green, nil, s.bold) -- Bold functions
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.pink, nil, s.bold) -- Bold keywords
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@property", c.blue, nil, s.bold) -- Bold properties
Group.new("@variable", c.superwhite, nil)
Group.new("@variable.builtin", c.purple, g.Normal, s.bold)

-- Additional syntax groups
Group.new("@string", c.green, nil, s.none)
Group.new("@string.escape", c.cyan, nil, s.bold)
Group.new("@string.special", c.pink, nil, s.none)
Group.new("@comment", c.seagreen, nil, s.italic)
Group.new("@number", c.orange, nil, s.bold) -- Bold numbers
Group.new("@boolean", c.purple, nil, s.bold) -- Bold booleans
Group.new("@type", c.blue, nil, s.bold) -- Bold types
Group.new("@type.builtin", c.blue, nil, s.bold)
Group.new("@operator", c.pink, nil, s.bold) -- Bold operators
Group.new("@punctuation", c.silver, nil, s.none)
Group.new("@punctuation.bracket", c.yellow, nil, s.bold) -- Bold brackets
Group.new("@punctuation.delimiter", c.silver, nil, s.none)

-- Lua-specific highlights
Group.new("@function.call.lua", c.blue, nil, s.bold) -- Bold function calls
Group.new("@function.builtin.lua", c.green, nil, s.bold)

-- =====================
-- Plugin Integration
-- =====================

-- Telescope with high contrast
Group.new("TelescopePrompt", c.superwhite, c.transparent)
Group.new("TelescopeResults", c.superwhite, c.transparent)
Group.new("TelescopePreview", c.superwhite, c.transparent)
Group.new("TelescopeSelection", c.black, c.green) -- Black text on green
Group.new("TelescopeSelectionCaret", c.green, c.green)
Group.new("TelescopeMatching", c.yellow, nil, s.bold)
Group.new("TelescopeBorder", c.green, c.transparent)
Group.new("TelescopePromptBorder", c.green, c.transparent)
Group.new("TelescopeResultsBorder", c.green, c.transparent)
Group.new("TelescopePreviewBorder", c.green, c.transparent)

-- LSP Diagnostics with bold styling
Group.new("LspDiagnosticsError", c.red, nil, s.bold)
Group.new("LspDiagnosticsWarning", c.orange, nil, s.bold)
Group.new("LspDiagnosticsInfo", c.blue, nil, s.bold)
Group.new("LspDiagnosticsHint", c.cyan, nil, s.bold)
Group.new("LspDiagnosticsUnderlineError", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineWarning", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineInfo", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineHint", nil, nil, s.underline)

-- LSP References
Group.new("LspReferenceRead", nil, c.green:dark(0.4), s.none)
Group.new("LspReferenceWrite", nil, c.green:dark(0.4), s.bold)
Group.new("LspReferenceText", nil, c.green:dark(0.4), s.none)

-- NvimTree with high contrast
Group.new("NvimTreeNormal", c.superwhite, c.transparent)
Group.new("NvimTreeFolderName", c.green, nil, s.bold) -- Green folders
Group.new("NvimTreeOpenedFolderName", c.green, nil, s.bold)
Group.new("NvimTreeEmptyFolderName", c.silver, nil, s.none)
Group.new("NvimTreeFolderIcon", c.yellow, nil, s.none)
Group.new("NvimTreeFileIcon", c.silver, nil, s.none)
Group.new("NvimTreeExecFile", c.green, nil, s.bold)
Group.new("NvimTreeSpecialFile", c.purple, nil, s.bold)
Group.new("NvimTreeImageFile", c.pink, nil, s.none)
Group.new("NvimTreeGitDirty", c.red, nil, s.bold)
Group.new("NvimTreeGitStaged", c.green, nil, s.bold)
Group.new("NvimTreeGitNew", c.orange, nil, s.bold)

-- BufferLine with high contrast
Group.new("BufferLineFill", c.silver, c.transparent)
Group.new("BufferLineBackground", c.silver_text, c.transparent)
Group.new("BufferLineBufferSelected", c.black, c.green) -- Black text on green
Group.new("BufferLineBufferVisible", c.superwhite, c.transparent)
Group.new("BufferLineIndicatorSelected", c.green, c.green)
Group.new("BufferLineIndicatorVisible", c.green, c.green)

-- Indent Blankline
Group.new("IndentBlanklineChar", c.darkgray, nil, s.none)
Group.new("IndentBlanklineContextChar", c.green, nil, s.none) -- Green context lines
Group.new("IndentBlanklineSpaceChar", c.darkgray, nil, s.none)
Group.new("IndentBlanklineContextStart", c.green, nil, s.underline)

-- =====================
-- Notes
-- =====================
-- 1. Prime-inspired variant with high contrast and bold styling
-- 2. Very dark background for maximum contrast
-- 3. Bold styling throughout for better visibility
-- 4. Green accent color for consistency with Prime's style
-- 5. Terminal-friendly colors with high contrast ratios
