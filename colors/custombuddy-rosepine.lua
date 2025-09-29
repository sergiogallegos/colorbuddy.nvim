-- CustomBuddy Rose Pine Variant
-- Inspired by Rose Pine color palette
-- Features: Beautiful, modern colors with excellent contrast and warmth

require("colorbuddy").colorscheme("custombuddy-rosepine")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- =====================
-- Rose Pine Color Palette
-- =====================

-- Core colors - Authentic Rose Pine colors
Color.new("white", "#e0def4")         -- Rose Pine light text
Color.new("superwhite", "#ffffff")     -- Pure white for primary text
Color.new("black", "#000000")         -- Pure black
Color.new("darkgray", "#403d52")      -- Rose Pine dark gray
Color.new("silver", "#908caa")        -- Rose Pine silver
Color.new("silver_text", "#908caa")   -- Rose Pine silver text
Color.new("dark_blue_gray", "#1f1d2e") -- Rose Pine dark background
Color.new("transparent", "#000000")   -- Transparent background support

-- Authentic Rose Pine accent colors
Color.new("red", "#eb6f92")          -- Rose Pine red for errors
Color.new("pink", "#f6c177")         -- Rose Pine pink for strings
Color.new("green", "#9ccfd8")        -- Rose Pine green for success
Color.new("yellow", "#f6c177")       -- Rose Pine yellow for keywords
Color.new("blue", "#31748f")         -- Rose Pine blue for types
Color.new("aqua", "#9ccfd8")         -- Rose Pine aqua for highlights
Color.new("cyan", "#9ccfd8")         -- Rose Pine cyan for documentation
Color.new("purple", "#c4a7e7")       -- Rose Pine purple for classes
Color.new("violet", "#c4a7e7")       -- Rose Pine violet for operators
Color.new("orange", "#f6c177")       -- Rose Pine orange for constants
Color.new("brown", "#e0def4")        -- Rose Pine brown for properties

-- Rose Pine comment and utility colors
Color.new("seagreen", "#6e6a86")     -- Rose Pine gray for comments
Color.new("turquoise", "#9ccfd8")    -- Rose Pine turquoise for unused text

-- Editor background - Authentic Rose Pine dark
local background_string = "#191724"  -- Rose Pine dark background
Color.new("background", background_string)
Color.new("gray0", background_string)

-- =====================
-- Define Highlight Groups
-- =====================

-- Base editor group with Rose Pine styling
Group.new("Normal", c.superwhite, c.transparent)

-- Rose Pine status line
Group.new("StatusLine", c.superwhite, c.dark_blue_gray) -- Clean status line
Group.new("StatusLineNC", c.silver_text, c.darkgray, s.none) -- Subtle inactive
Group.new("StatusLineTerm", c.superwhite, c.dark_blue_gray) -- Terminal status line
Group.new("StatusLineTermNC", c.silver_text, c.darkgray, s.none) -- Inactive terminal

-- Rose Pine line numbers and cursor
Group.new("LineNr", c.seagreen, c.transparent) -- Gray line numbers
Group.new("CursorLineNr", c.yellow, c.transparent, s.bold) -- Bold yellow current line
Group.new("CursorLine", nil, c.dark_blue_gray:light(0.05)) -- Subtle current line
Group.new("Cursor", c.black, c.superwhite) -- Cursor
Group.new("CursorColumn", nil, c.dark_blue_gray:light(0.05)) -- Current column

-- Rose Pine visual selection
Group.new("Visual", nil, c.blue:dark(0.2)) -- Blue selection
Group.new("VisualNOS", nil, c.blue:dark(0.1)) -- Subtle visual selection

-- Rose Pine search and highlighting
Group.new("Search", c.black, c.yellow) -- Black text on yellow
Group.new("IncSearch", c.black, c.orange) -- Black text on orange
Group.new("CurSearch", c.black, c.green) -- Black text on green
Group.new("MatchParen", c.black, c.cyan, s.bold) -- Bold matching parentheses

-- Rose Pine popup menus
Group.new("Pmenu", c.superwhite, c.dark_blue_gray) -- Popup menu
Group.new("PmenuSel", c.black, c.blue) -- Black text on blue
Group.new("PmenuSbar", nil, c.darkgray) -- Popup menu scrollbar
Group.new("PmenuThumb", nil, c.silver) -- Popup menu thumb

-- Rose Pine tabs
Group.new("TabLine", c.silver_text, c.darkgray) -- Tab line
Group.new("TabLineFill", c.silver, c.darkgray) -- Tab line fill
Group.new("TabLineSel", c.black, c.blue, s.bold) -- Black text on blue for selected tab

-- Rose Pine windows and splits
Group.new("WinSeparator", c.blue, c.transparent) -- Blue separators
Group.new("VertSplit", c.blue, c.transparent) -- Vertical split
Group.new("HorizSplit", c.blue, c.transparent) -- Horizontal split

-- Rose Pine folding
Group.new("FoldColumn", c.seagreen, c.transparent) -- Gray fold column
Group.new("Folded", c.seagreen, c.dark_blue_gray:light(0.05)) -- Folded text

-- Rose Pine signs and diagnostics
Group.new("SignColumn", c.seagreen, c.transparent) -- Gray sign column
Group.new("DiagnosticError", c.red, nil, s.bold) -- Bold error diagnostics
Group.new("DiagnosticWarn", c.orange, nil, s.bold) -- Bold warning diagnostics
Group.new("DiagnosticInfo", c.blue, nil, s.bold) -- Bold info diagnostics
Group.new("DiagnosticHint", c.cyan, nil, s.bold) -- Bold hint diagnostics

-- =====================
-- Syntax Highlighting
-- =====================

-- Rose Pine syntax with beautiful styling
Group.new("@constant", c.orange, nil, s.none) -- Clean constants
Group.new("@function", c.yellow, nil, s.bold) -- Bold functions
Group.new("@function.bracket", g.Normal, g.Normal) -- Brackets in default color
Group.new("@keyword", c.pink, nil, s.bold) -- Bold keywords
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none) -- Faded keywords
Group.new("@property", c.blue, nil, s.none) -- Properties in blue
Group.new("@variable", c.superwhite, nil) -- Variables in white
Group.new("@variable.builtin", c.purple, g.Normal, s.bold) -- Bold built-in variables

-- Additional syntax groups
Group.new("@string", c.green, nil, s.none) -- Strings in green
Group.new("@string.escape", c.cyan, nil, s.bold) -- Bold string escapes
Group.new("@string.special", c.pink, nil, s.none) -- Special strings in pink
Group.new("@comment", c.seagreen, nil, s.italic) -- Comments in gray with italic
Group.new("@number", c.orange, nil, s.bold) -- Bold numbers
Group.new("@boolean", c.purple, nil, s.bold) -- Bold booleans
Group.new("@type", c.blue, nil, s.italic) -- Types in blue with italic
Group.new("@type.builtin", c.blue, nil, s.bold) -- Bold built-in types
Group.new("@operator", c.pink, nil, s.bold) -- Bold operators
Group.new("@punctuation", c.silver, nil, s.none) -- Punctuation in silver
Group.new("@punctuation.bracket", c.yellow, nil, s.bold) -- Bold brackets
Group.new("@punctuation.delimiter", c.silver, nil, s.none) -- Delimiters in silver

-- Lua-specific highlights
Group.new("@function.call.lua", c.blue, nil, s.bold) -- Bold Lua function calls
Group.new("@function.builtin.lua", c.yellow, nil, s.bold) -- Bold Lua built-in functions

-- =====================
-- Plugin Integration
-- =====================

-- Rose Pine Telescope styling
Group.new("TelescopePrompt", c.superwhite, c.dark_blue_gray) -- Telescope prompt
Group.new("TelescopeResults", c.superwhite, c.background) -- Telescope results
Group.new("TelescopePreview", c.superwhite, c.background) -- Telescope preview
Group.new("TelescopeSelection", c.black, c.blue) -- Black text on blue
Group.new("TelescopeSelectionCaret", c.blue, c.blue) -- Blue selection caret
Group.new("TelescopeMatching", c.yellow, nil, s.bold) -- Bold matching text
Group.new("TelescopeBorder", c.blue, c.background) -- Blue borders
Group.new("TelescopePromptBorder", c.blue, c.dark_blue_gray) -- Blue prompt border
Group.new("TelescopeResultsBorder", c.blue, c.background) -- Blue results border
Group.new("TelescopePreviewBorder", c.blue, c.background) -- Blue preview border

-- Rose Pine LSP Diagnostics
Group.new("LspDiagnosticsError", c.red, nil, s.bold) -- Bold LSP errors
Group.new("LspDiagnosticsWarning", c.orange, nil, s.bold) -- Bold LSP warnings
Group.new("LspDiagnosticsInfo", c.blue, nil, s.bold) -- Bold LSP info
Group.new("LspDiagnosticsHint", c.cyan, nil, s.bold) -- Bold LSP hints
Group.new("LspDiagnosticsUnderlineError", nil, nil, s.underline) -- Error underlines
Group.new("LspDiagnosticsUnderlineWarning", nil, nil, s.underline) -- Warning underlines
Group.new("LspDiagnosticsUnderlineInfo", nil, nil, s.underline) -- Info underlines
Group.new("LspDiagnosticsUnderlineHint", nil, nil, s.underline) -- Hint underlines

-- Rose Pine LSP References
Group.new("LspReferenceRead", nil, c.blue:dark(0.3), s.none) -- Blue read references
Group.new("LspReferenceWrite", nil, c.blue:dark(0.3), s.bold) -- Bold blue write references
Group.new("LspReferenceText", nil, c.blue:dark(0.3), s.none) -- Blue text references

-- Rose Pine NvimTree styling
Group.new("NvimTreeNormal", c.superwhite, c.background) -- NvimTree normal
Group.new("NvimTreeFolderName", c.blue, nil, s.bold) -- Bold folder names
Group.new("NvimTreeOpenedFolderName", c.blue, nil, s.bold) -- Bold opened folders
Group.new("NvimTreeEmptyFolderName", c.silver, nil, s.none) -- Empty folders
Group.new("NvimTreeFolderIcon", c.yellow, nil, s.none) -- Folder icons
Group.new("NvimTreeFileIcon", c.silver, nil, s.none) -- File icons
Group.new("NvimTreeExecFile", c.green, nil, s.bold) -- Bold executable files
Group.new("NvimTreeSpecialFile", c.purple, nil, s.bold) -- Bold special files
Group.new("NvimTreeImageFile", c.pink, nil, s.none) -- Image files
Group.new("NvimTreeGitDirty", c.red, nil, s.bold) -- Bold git dirty files
Group.new("NvimTreeGitStaged", c.green, nil, s.bold) -- Bold git staged files
Group.new("NvimTreeGitNew", c.orange, nil, s.bold) -- Bold git new files

-- Rose Pine BufferLine styling
Group.new("BufferLineFill", c.silver, c.darkgray) -- Buffer line fill
Group.new("BufferLineBackground", c.silver_text, c.darkgray) -- Inactive buffers
Group.new("BufferLineBufferSelected", c.black, c.blue) -- Black text on blue
Group.new("BufferLineBufferVisible", c.superwhite, c.dark_blue_gray) -- Visible buffers
Group.new("BufferLineIndicatorSelected", c.blue, c.blue) -- Blue selected indicator
Group.new("BufferLineIndicatorVisible", c.blue, c.blue) -- Blue visible indicator

-- Rose Pine Indent Blankline
Group.new("IndentBlanklineChar", c.darkgray, nil, s.none) -- Indent guides
Group.new("IndentBlanklineContextChar", c.blue, nil, s.none) -- Blue context lines
Group.new("IndentBlanklineSpaceChar", c.darkgray, nil, s.none) -- Space characters
Group.new("IndentBlanklineContextStart", c.blue, nil, s.underline) -- Blue context start

-- =====================
-- Notes
-- =====================
-- 1. Rose Pine inspired variant with beautiful, warm colors
-- 2. Modern appearance with excellent contrast
-- 3. Blue accent theme for consistency
-- 4. Clean, readable syntax highlighting
-- 5. Perfect for developers who love the Rose Pine aesthetic
