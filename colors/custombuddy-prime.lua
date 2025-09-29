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

-- Core colors - High contrast, terminal-friendly
Color.new("white", "#f0f0f0")         -- Clean white
Color.new("superwhite", "#ffffff")     -- Pure white
Color.new("black", "#000000")         -- Pure black
Color.new("darkgray", "#404040")      -- Medium gray
Color.new("silver", "#a0a0a0")        -- Light gray
Color.new("silver_text", "#c0c0c0")   -- Light silver
Color.new("dark_blue_gray", "#1a1a1a") -- Very dark background
Color.new("transparent", "#000000")   -- Transparent background support

-- Bold, high-contrast accent colors
Color.new("red", "#ff5555")          -- Bright red
Color.new("pink", "#ff79c6")         -- Bright pink
Color.new("green", "#50fa7b")        -- Bright green
Color.new("yellow", "#f1fa8c")       -- Bright yellow
Color.new("blue", "#8be9fd")         -- Bright blue
Color.new("aqua", "#66d9ef")         -- Bright aqua
Color.new("cyan", "#8be9fd")         -- Bright cyan
Color.new("purple", "#bd93f9")       -- Bright purple
Color.new("violet", "#c678dd")       -- Bright violet
Color.new("orange", "#ffb86c")       -- Bright orange
Color.new("brown", "#d4a574")        -- Warm brown

-- High-contrast comment colors
Color.new("seagreen", "#6272a4")     -- Blue-gray comments
Color.new("turquoise", "#44a6c6")    -- Bright turquoise

-- Editor background - Very dark for high contrast
local background_string = "#0d1117"  -- GitHub dark background
Color.new("background", background_string)
Color.new("gray0", background_string)

-- =====================
-- Define Highlight Groups
-- =====================

-- Base editor group with high contrast
Group.new("Normal", c.superwhite, c.transparent)

-- High-contrast status line
Group.new("StatusLine", c.black, c.green) -- Black text on green
Group.new("StatusLineNC", c.silver_text, c.darkgray, s.bold)

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
Group.new("Pmenu", c.superwhite, c.dark_blue_gray)
Group.new("PmenuSel", c.black, c.green) -- Black text on green
Group.new("PmenuSbar", nil, c.darkgray)
Group.new("PmenuThumb", nil, c.silver)

-- High-contrast tabs
Group.new("TabLine", c.silver_text, c.darkgray)
Group.new("TabLineFill", c.silver, c.darkgray)
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
Group.new("TelescopePrompt", c.superwhite, c.dark_blue_gray)
Group.new("TelescopeResults", c.superwhite, c.background)
Group.new("TelescopePreview", c.superwhite, c.background)
Group.new("TelescopeSelection", c.black, c.green) -- Black text on green
Group.new("TelescopeSelectionCaret", c.green, c.green)
Group.new("TelescopeMatching", c.yellow, nil, s.bold)
Group.new("TelescopeBorder", c.green, c.background)
Group.new("TelescopePromptBorder", c.green, c.dark_blue_gray)
Group.new("TelescopeResultsBorder", c.green, c.background)
Group.new("TelescopePreviewBorder", c.green, c.background)

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
Group.new("NvimTreeNormal", c.superwhite, c.background)
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
Group.new("BufferLineFill", c.silver, c.darkgray)
Group.new("BufferLineBackground", c.silver_text, c.darkgray)
Group.new("BufferLineBufferSelected", c.black, c.green) -- Black text on green
Group.new("BufferLineBufferVisible", c.superwhite, c.dark_blue_gray)
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
