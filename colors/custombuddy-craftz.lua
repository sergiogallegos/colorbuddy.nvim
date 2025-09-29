-- CustomBuddy Craftz Variant
-- Inspired by craftzdog's dotfiles configuration
-- Features: Modern, clean, with vibrant accents and better contrast

require("colorbuddy").colorscheme("custombuddy-craftz")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- =====================
-- Craftz-Inspired Color Palette
-- =====================

-- Core colors - Authentic TokyoNight colors
Color.new("white", "#a9b1d6")         -- TokyoNight light text
Color.new("superwhite", "#ffffff")     -- Pure white for primary text
Color.new("black", "#000000")         -- Pure black
Color.new("darkgray", "#414868")      -- TokyoNight dark gray
Color.new("silver", "#9aa5ce")        -- TokyoNight silver
Color.new("silver_text", "#9aa5ce")   -- TokyoNight silver text
Color.new("dark_blue_gray", "#1a1b26") -- TokyoNight dark background
Color.new("transparent", "#000000")   -- Transparent background support

-- Authentic TokyoNight accent colors
Color.new("red", "#f7768e")          -- TokyoNight red for errors
Color.new("pink", "#bb9af7")         -- TokyoNight pink for strings
Color.new("green", "#9ece6a")        -- TokyoNight green for success
Color.new("yellow", "#e0af68")       -- TokyoNight yellow for keywords
Color.new("blue", "#7aa2f7")         -- TokyoNight blue for types
Color.new("aqua", "#7dcfff")         -- TokyoNight aqua for highlights
Color.new("cyan", "#7dcfff")         -- TokyoNight cyan for documentation
Color.new("purple", "#bb9af7")       -- TokyoNight purple for classes
Color.new("violet", "#bb9af7")       -- TokyoNight violet for operators
Color.new("orange", "#ff9e64")       -- TokyoNight orange for constants
Color.new("brown", "#d4a574")        -- TokyoNight brown for properties

-- TokyoNight comment colors
Color.new("seagreen", "#565f89")     -- TokyoNight blue-gray for comments
Color.new("turquoise", "#2ac3de")    -- TokyoNight turquoise for unused text

-- Editor background - Authentic TokyoNight dark
local background_string = "#1a1b26"  -- TokyoNight dark background
Color.new("background", background_string)
Color.new("gray0", background_string)

-- =====================
-- Define Highlight Groups
-- =====================

-- Base editor group with better contrast
Group.new("Normal", c.superwhite, c.transparent)

-- Modern status line
Group.new("StatusLine", c.black, c.blue) -- Black text on blue background
Group.new("StatusLineNC", c.silver_text, c.darkgray, s.bold)

-- Enhanced line numbers and cursor
Group.new("LineNr", c.seagreen, c.transparent) -- Blue-gray line numbers
Group.new("CursorLineNr", c.yellow, c.transparent, s.bold) -- Yellow current line
Group.new("CursorLine", nil, c.dark_blue_gray:light(0.05))
Group.new("Cursor", c.black, c.superwhite)

-- Modern visual selection
Group.new("Visual", nil, c.blue:dark(0.2)) -- Blue selection
Group.new("VisualNOS", nil, c.blue:dark(0.1))

-- Enhanced search highlighting
Group.new("Search", c.black, c.yellow) -- Black text on yellow
Group.new("IncSearch", c.black, c.orange) -- Black text on orange
Group.new("CurSearch", c.black, c.green) -- Black text on green
Group.new("MatchParen", c.black, c.cyan, s.bold) -- Black text on cyan

-- Modern popup menus
Group.new("Pmenu", c.superwhite, c.transparent)
Group.new("PmenuSel", c.black, c.blue) -- Black text on blue
Group.new("PmenuSbar", nil, c.transparent)
Group.new("PmenuThumb", nil, c.silver)

-- Modern tabs
Group.new("TabLine", c.silver_text, c.transparent)
Group.new("TabLineFill", c.silver, c.transparent)
Group.new("TabLineSel", c.black, c.blue, s.bold) -- Black text on blue

-- Windows and splits
Group.new("WinSeparator", c.blue, c.transparent) -- Blue separators
Group.new("VertSplit", c.blue, c.transparent)
Group.new("HorizSplit", c.blue, c.transparent)

-- Folding
Group.new("FoldColumn", c.seagreen, c.transparent)
Group.new("Folded", c.seagreen, c.dark_blue_gray:light(0.1))

-- Signs and diagnostics
Group.new("SignColumn", c.seagreen, c.transparent)
Group.new("DiagnosticError", c.red, nil, s.bold)
Group.new("DiagnosticWarn", c.orange, nil, s.none)
Group.new("DiagnosticInfo", c.blue, nil, s.none)
Group.new("DiagnosticHint", c.cyan, nil, s.none)

-- =====================
-- Syntax Highlighting
-- =====================

-- Enhanced syntax with vibrant colors
Group.new("@constant", c.orange, nil, s.none)
Group.new("@function", c.yellow, nil, s.bold) -- Bold functions
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.pink, nil, s.bold) -- Bold keywords
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@property", c.blue, nil, s.none)
Group.new("@variable", c.superwhite, nil)
Group.new("@variable.builtin", c.purple, g.Normal, s.bold) -- Bold built-ins

-- Additional syntax groups
Group.new("@string", c.green, nil, s.none)
Group.new("@string.escape", c.cyan, nil, s.bold)
Group.new("@string.special", c.pink, nil, s.none)
Group.new("@comment", c.seagreen, nil, s.italic)
Group.new("@number", c.orange, nil, s.none)
Group.new("@boolean", c.purple, nil, s.none)
Group.new("@type", c.blue, nil, s.italic)
Group.new("@type.builtin", c.blue, nil, s.bold)
Group.new("@operator", c.pink, nil, s.none)
Group.new("@punctuation", c.silver, nil, s.none)
Group.new("@punctuation.bracket", c.yellow, nil, s.none)
Group.new("@punctuation.delimiter", c.silver, nil, s.none)

-- Lua-specific highlights
Group.new("@function.call.lua", c.blue, nil, s.none)
Group.new("@function.builtin.lua", c.yellow, nil, s.bold)

-- =====================
-- Plugin Integration
-- =====================

-- Telescope with modern styling
Group.new("TelescopePrompt", c.superwhite, c.transparent)
Group.new("TelescopeResults", c.superwhite, c.transparent)
Group.new("TelescopePreview", c.superwhite, c.transparent)
Group.new("TelescopeSelection", c.black, c.blue) -- Black text on blue
Group.new("TelescopeSelectionCaret", c.blue, c.blue)
Group.new("TelescopeMatching", c.yellow, nil, s.bold)
Group.new("TelescopeBorder", c.blue, c.transparent)
Group.new("TelescopePromptBorder", c.blue, c.transparent)
Group.new("TelescopeResultsBorder", c.blue, c.transparent)
Group.new("TelescopePreviewBorder", c.blue, c.transparent)

-- LSP Diagnostics
Group.new("LspDiagnosticsError", c.red, nil, s.bold)
Group.new("LspDiagnosticsWarning", c.orange, nil, s.none)
Group.new("LspDiagnosticsInfo", c.blue, nil, s.none)
Group.new("LspDiagnosticsHint", c.cyan, nil, s.none)
Group.new("LspDiagnosticsUnderlineError", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineWarning", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineInfo", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineHint", nil, nil, s.underline)

-- LSP References
Group.new("LspReferenceRead", nil, c.blue:dark(0.3), s.none)
Group.new("LspReferenceWrite", nil, c.blue:dark(0.3), s.bold)
Group.new("LspReferenceText", nil, c.blue:dark(0.3), s.none)

-- NvimTree with modern colors
Group.new("NvimTreeNormal", c.superwhite, c.transparent)
Group.new("NvimTreeFolderName", c.blue, nil, s.bold)
Group.new("NvimTreeOpenedFolderName", c.blue, nil, s.bold)
Group.new("NvimTreeEmptyFolderName", c.silver, nil, s.none)
Group.new("NvimTreeFolderIcon", c.yellow, nil, s.none)
Group.new("NvimTreeFileIcon", c.silver, nil, s.none)
Group.new("NvimTreeExecFile", c.green, nil, s.bold)
Group.new("NvimTreeSpecialFile", c.purple, nil, s.none)
Group.new("NvimTreeImageFile", c.pink, nil, s.none)
Group.new("NvimTreeGitDirty", c.red, nil, s.none)
Group.new("NvimTreeGitStaged", c.green, nil, s.none)
Group.new("NvimTreeGitNew", c.orange, nil, s.none)

-- BufferLine with modern styling
Group.new("BufferLineFill", c.silver, c.transparent)
Group.new("BufferLineBackground", c.silver_text, c.transparent)
Group.new("BufferLineBufferSelected", c.black, c.blue) -- Black text on blue
Group.new("BufferLineBufferVisible", c.superwhite, c.transparent)
Group.new("BufferLineIndicatorSelected", c.blue, c.blue)
Group.new("BufferLineIndicatorVisible", c.blue, c.blue)

-- Indent Blankline
Group.new("IndentBlanklineChar", c.darkgray, nil, s.none)
Group.new("IndentBlanklineContextChar", c.blue, nil, s.none) -- Blue context lines
Group.new("IndentBlanklineSpaceChar", c.darkgray, nil, s.none)
Group.new("IndentBlanklineContextStart", c.blue, nil, s.underline)

-- =====================
-- Notes
-- =====================
-- 1. Craftz-inspired variant with modern, vibrant colors
-- 2. Better contrast with slightly lighter background
-- 3. Bold keywords and functions for better readability
-- 4. Blue accent color throughout for consistency
-- 5. Vibrant accent colors inspired by modern IDEs
