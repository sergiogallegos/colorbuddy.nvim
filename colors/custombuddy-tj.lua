-- CustomBuddy TJ Variant
-- Inspired by tjdevries' configuration
-- Features: Professional, subtle, with excellent readability

require("colorbuddy").colorscheme("custombuddy-tj")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- =====================
-- TJ-Inspired Color Palette
-- =====================

-- Core colors - Professional and subtle
Color.new("white", "#e6e6e6")         -- Soft white
Color.new("superwhite", "#f0f0f0")     -- Clean white
Color.new("black", "#000000")         -- Pure black
Color.new("darkgray", "#3c3c3c")      -- Professional gray
Color.new("silver", "#a8a8a8")        -- Muted silver
Color.new("silver_text", "#b8b8b8")   -- Soft silver text
Color.new("dark_blue_gray", "#2a2a2a") -- Professional dark background
Color.new("transparent", "#000000")   -- Transparent background support

-- Professional accent colors - Subtle but distinct
Color.new("red", "#d75f5f")          -- Professional red
Color.new("pink", "#d3869b")         -- Muted pink
Color.new("green", "#a9b665")        -- Professional green
Color.new("yellow", "#d8a657")       -- Professional yellow
Color.new("blue", "#7daea3")         -- Professional blue
Color.new("aqua", "#89b482")         -- Muted aqua
Color.new("cyan", "#7daea3")         -- Professional cyan
Color.new("purple", "#b16286")       -- Professional purple
Color.new("violet", "#c678dd")       -- Muted violet
Color.new("orange", "#d65d0e")       -- Professional orange
Color.new("brown", "#a3685a")        -- Warm brown

-- Professional comment colors
Color.new("seagreen", "#6a6a6a")     -- Muted gray for comments
Color.new("turquoise", "#5f8787")    -- Professional turquoise

-- Editor background - Professional dark
local background_string = "#1e1e1e"  -- Professional dark background
Color.new("background", background_string)
Color.new("gray0", background_string)

-- =====================
-- Define Highlight Groups
-- =====================

-- Base editor group with professional styling
Group.new("Normal", c.superwhite, c.transparent)

-- Professional status line
Group.new("StatusLine", c.superwhite, c.dark_blue_gray) -- Clean status line
Group.new("StatusLineNC", c.silver_text, c.darkgray, s.none) -- Subtle inactive

-- Professional line numbers
Group.new("LineNr", c.darkgray, c.transparent)
Group.new("CursorLineNr", c.yellow, c.transparent, s.none) -- Subtle current line
Group.new("CursorLine", nil, c.dark_blue_gray:light(0.03))
Group.new("Cursor", c.black, c.superwhite)

-- Professional visual selection
Group.new("Visual", nil, c.blue:dark(0.2)) -- Subtle blue selection
Group.new("VisualNOS", nil, c.blue:dark(0.1))

-- Professional search
Group.new("Search", c.black, c.yellow) -- Black text on yellow
Group.new("IncSearch", c.black, c.orange) -- Black text on orange
Group.new("CurSearch", c.black, c.green) -- Black text on green
Group.new("MatchParen", c.black, c.cyan, s.none) -- Subtle matching

-- Professional popup menus
Group.new("Pmenu", c.superwhite, c.dark_blue_gray)
Group.new("PmenuSel", c.black, c.blue) -- Black text on blue
Group.new("PmenuSbar", nil, c.darkgray)
Group.new("PmenuThumb", nil, c.silver)

-- Professional tabs
Group.new("TabLine", c.silver_text, c.darkgray)
Group.new("TabLineFill", c.silver, c.darkgray)
Group.new("TabLineSel", c.black, c.blue, s.none) -- Subtle selected tab

-- Windows and splits
Group.new("WinSeparator", c.darkgray, c.transparent) -- Subtle separators
Group.new("VertSplit", c.darkgray, c.transparent)
Group.new("HorizSplit", c.darkgray, c.transparent)

-- Folding
Group.new("FoldColumn", c.darkgray, c.transparent)
Group.new("Folded", c.darkgray, c.dark_blue_gray:light(0.05))

-- Signs and diagnostics
Group.new("SignColumn", c.darkgray, c.transparent)
Group.new("DiagnosticError", c.red, nil, s.none) -- Subtle errors
Group.new("DiagnosticWarn", c.orange, nil, s.none) -- Subtle warnings
Group.new("DiagnosticInfo", c.blue, nil, s.none) -- Subtle info
Group.new("DiagnosticHint", c.cyan, nil, s.none) -- Subtle hints

-- =====================
-- Syntax Highlighting
-- =====================

-- Professional syntax with subtle styling
Group.new("@constant", c.orange, nil, s.none)
Group.new("@function", c.yellow, nil, s.none) -- Subtle functions
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.pink, nil, s.none) -- Subtle keywords
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@property", c.blue, nil, s.none) -- Subtle properties
Group.new("@variable", c.superwhite, nil)
Group.new("@variable.builtin", c.purple, g.Normal, s.none) -- Subtle built-ins

-- Additional syntax groups
Group.new("@string", c.green, nil, s.none)
Group.new("@string.escape", c.cyan, nil, s.none) -- Subtle escapes
Group.new("@string.special", c.pink, nil, s.none)
Group.new("@comment", c.seagreen, nil, s.italic)
Group.new("@number", c.orange, nil, s.none) -- Subtle numbers
Group.new("@boolean", c.purple, nil, s.none) -- Subtle booleans
Group.new("@type", c.blue, nil, s.italic) -- Italic types
Group.new("@type.builtin", c.blue, nil, s.none) -- Subtle built-in types
Group.new("@operator", c.pink, nil, s.none) -- Subtle operators
Group.new("@punctuation", c.silver, nil, s.none)
Group.new("@punctuation.bracket", c.yellow, nil, s.none) -- Subtle brackets
Group.new("@punctuation.delimiter", c.silver, nil, s.none)

-- Lua-specific highlights
Group.new("@function.call.lua", c.blue, nil, s.none) -- Subtle function calls
Group.new("@function.builtin.lua", c.yellow, nil, s.none)

-- =====================
-- Plugin Integration
-- =====================

-- Telescope with professional styling
Group.new("TelescopePrompt", c.superwhite, c.dark_blue_gray)
Group.new("TelescopeResults", c.superwhite, c.background)
Group.new("TelescopePreview", c.superwhite, c.background)
Group.new("TelescopeSelection", c.black, c.blue) -- Black text on blue
Group.new("TelescopeSelectionCaret", c.blue, c.blue)
Group.new("TelescopeMatching", c.yellow, nil, s.none) -- Subtle matching
Group.new("TelescopeBorder", c.darkgray, c.background)
Group.new("TelescopePromptBorder", c.darkgray, c.dark_blue_gray)
Group.new("TelescopeResultsBorder", c.darkgray, c.background)
Group.new("TelescopePreviewBorder", c.darkgray, c.background)

-- LSP Diagnostics with subtle styling
Group.new("LspDiagnosticsError", c.red, nil, s.none)
Group.new("LspDiagnosticsWarning", c.orange, nil, s.none)
Group.new("LspDiagnosticsInfo", c.blue, nil, s.none)
Group.new("LspDiagnosticsHint", c.cyan, nil, s.none)
Group.new("LspDiagnosticsUnderlineError", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineWarning", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineInfo", nil, nil, s.underline)
Group.new("LspDiagnosticsUnderlineHint", nil, nil, s.underline)

-- LSP References
Group.new("LspReferenceRead", nil, c.blue:dark(0.2), s.none)
Group.new("LspReferenceWrite", nil, c.blue:dark(0.2), s.none)
Group.new("LspReferenceText", nil, c.blue:dark(0.2), s.none)

-- NvimTree with professional styling
Group.new("NvimTreeNormal", c.superwhite, c.background)
Group.new("NvimTreeFolderName", c.blue, nil, s.none) -- Subtle folders
Group.new("NvimTreeOpenedFolderName", c.blue, nil, s.none)
Group.new("NvimTreeEmptyFolderName", c.silver, nil, s.none)
Group.new("NvimTreeFolderIcon", c.yellow, nil, s.none)
Group.new("NvimTreeFileIcon", c.silver, nil, s.none)
Group.new("NvimTreeExecFile", c.green, nil, s.none)
Group.new("NvimTreeSpecialFile", c.purple, nil, s.none)
Group.new("NvimTreeImageFile", c.pink, nil, s.none)
Group.new("NvimTreeGitDirty", c.red, nil, s.none)
Group.new("NvimTreeGitStaged", c.green, nil, s.none)
Group.new("NvimTreeGitNew", c.orange, nil, s.none)

-- BufferLine with professional styling
Group.new("BufferLineFill", c.silver, c.darkgray)
Group.new("BufferLineBackground", c.silver_text, c.darkgray)
Group.new("BufferLineBufferSelected", c.black, c.blue) -- Black text on blue
Group.new("BufferLineBufferVisible", c.superwhite, c.dark_blue_gray)
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
-- 1. TJ-inspired variant with professional, subtle styling
-- 2. Muted colors for long coding sessions
-- 3. Subtle styling throughout for professional appearance
-- 4. Blue accent color for consistency
-- 5. Excellent readability with reduced eye strain
