-- Load and apply the custom colorscheme "custombuddy"
require("colorbuddy").colorscheme("custombuddy")

-- Load the colorbuddy module
local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- =====================
-- Define Color Palette
-- =====================

-- Core colors for text and backgrounds - Enhanced for better contrast
Color.new("white", "#f8f8f2")         -- Cleaner light text color
Color.new("superwhite", "#ffffff")     -- Pure white for primary text
Color.new("black", "#000000")         -- Black for active status line text
Color.new("darkgray", "#3c3c3c")      -- Better contrast dark gray
Color.new("silver", "#c5c5c5")        -- Brighter silver for better visibility
Color.new("silver_text", "#e0e0e0")   -- Cleaner silver for inactive status line text
Color.new("dark_blue_gray", "#2a2a2a") -- Slightly lighter for better contrast
Color.new("transparent", "#000000")   -- Transparent background support (will be overridden)

-- Enhanced accent colors for better syntax highlighting
Color.new("red", "#ff6b6b")          -- More vibrant red for errors
Color.new("pink", "#ff79c6")         -- Modern pink for strings
Color.new("green", "#a9b665")        -- Brighter green for success
Color.new("yellow", "#f1fa8c")       -- More vibrant yellow for keywords
Color.new("blue", "#7daea3")         -- Enhanced blue for types
Color.new("aqua", "#89b482")         -- Brighter aqua for highlights
Color.new("cyan", "#7daea3")         -- Enhanced cyan for documentation
Color.new("purple", "#b16286")       -- More vibrant purple for classes
Color.new("violet", "#c678dd")       -- Enhanced violet for operators
Color.new("orange", "#d8a657")       -- Brighter orange for constants
Color.new("brown", "#d4a574")        -- Warmer brown for properties

-- Enhanced comment and utility colors
Color.new("seagreen", "#6a6a6a")     -- Better contrast seagreen for comments
Color.new("turquoise", "#5f8787")    -- More distinct turquoise for unused text

-- Enhanced editor background - Slightly lighter for better contrast
local background_string = "#1a1a1a"  -- Lighter background for better contrast
Color.new("background", background_string)
Color.new("gray0", background_string)

-- =====================
-- Define Highlight Groups
-- =====================

-- Base editor group (supports transparency)
Group.new("Normal", c.superwhite, c.transparent) -- Default text with transparent background

-- Enhanced Status Line and UI Elements with better contrast
Group.new("StatusLine", c.superwhite, c.dark_blue_gray) -- Clean white text on dark background
Group.new("StatusLineNC", c.silver_text, c.darkgray, s.none) -- Subtle inactive status line
Group.new("StatusLineTerm", c.superwhite, c.dark_blue_gray) -- Terminal status line
Group.new("StatusLineTermNC", c.silver_text, c.darkgray, s.none) -- Inactive terminal status line

-- Enhanced line numbers and cursor
Group.new("LineNr", c.seagreen, c.transparent) -- Blue-gray line numbers for better contrast
Group.new("CursorLineNr", c.yellow, c.transparent, s.bold) -- Bold yellow current line number
Group.new("CursorLine", nil, c.dark_blue_gray:light(0.08)) -- Slightly brighter current line
Group.new("Cursor", c.black, c.superwhite) -- Cursor
Group.new("CursorColumn", nil, c.dark_blue_gray:light(0.08)) -- Current column

-- Enhanced visual selection
Group.new("Visual", nil, c.blue:dark(0.2)) -- Blue selection for better visibility
Group.new("VisualNOS", nil, c.blue:dark(0.1)) -- Subtle visual selection

-- Enhanced search and highlighting
Group.new("Search", c.black, c.yellow) -- Black text on yellow for high contrast
Group.new("IncSearch", c.black, c.orange) -- Black text on orange
Group.new("CurSearch", c.black, c.green) -- Black text on green
Group.new("MatchParen", c.black, c.cyan, s.bold) -- Bold matching parentheses

-- Enhanced popup menus
Group.new("Pmenu", c.superwhite, c.dark_blue_gray) -- Popup menu
Group.new("PmenuSel", c.black, c.blue) -- Black text on blue for better contrast
Group.new("PmenuSbar", nil, c.darkgray) -- Popup menu scrollbar
Group.new("PmenuThumb", nil, c.silver) -- Popup menu thumb

-- Enhanced tabs
Group.new("TabLine", c.silver_text, c.darkgray) -- Tab line
Group.new("TabLineFill", c.silver, c.darkgray) -- Tab line fill
Group.new("TabLineSel", c.black, c.blue, s.bold) -- Black text on blue for selected tab

-- Enhanced windows and splits
Group.new("WinSeparator", c.blue, c.transparent) -- Blue separators for better visibility
Group.new("VertSplit", c.blue, c.transparent) -- Vertical split
Group.new("HorizSplit", c.blue, c.transparent) -- Horizontal split

-- Enhanced folding
Group.new("FoldColumn", c.seagreen, c.transparent) -- Blue-gray fold column
Group.new("Folded", c.seagreen, c.dark_blue_gray:light(0.1)) -- Folded text

-- Enhanced signs and diagnostics
Group.new("SignColumn", c.seagreen, c.transparent) -- Blue-gray sign column
Group.new("DiagnosticError", c.red, nil, s.bold) -- Bold error diagnostics
Group.new("DiagnosticWarn", c.orange, nil, s.bold) -- Bold warning diagnostics
Group.new("DiagnosticInfo", c.blue, nil, s.bold) -- Bold info diagnostics
Group.new("DiagnosticHint", c.cyan, nil, s.bold) -- Bold hint diagnostics

-- Enhanced Syntax Highlighting with better contrast and styling
Group.new("@constant", c.orange, nil, s.bold)          -- Bold constants for better visibility
Group.new("@function", c.yellow, nil, s.bold)          -- Bold functions for better readability
Group.new("@function.bracket", g.Normal, g.Normal)     -- Brackets in default color
Group.new("@keyword", c.violet, nil, s.bold)           -- Bold keywords for better contrast
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none) -- Faded keywords (lighter nontext)
Group.new("@property", c.blue, nil, s.none)            -- Properties in blue
Group.new("@variable", c.superwhite, nil)              -- Variables in superwhite
Group.new("@variable.builtin", c.purple, g.Normal, s.bold) -- Bold built-in variables

-- Enhanced additional syntax groups
Group.new("@string", c.green, nil, s.none)             -- Strings in green
Group.new("@string.escape", c.cyan, nil, s.bold)        -- Bold string escapes
Group.new("@string.special", c.pink, nil, s.none)       -- Special strings in pink
Group.new("@comment", c.seagreen, nil, s.italic)        -- Comments in seagreen with italic
Group.new("@number", c.orange, nil, s.bold)            -- Bold numbers for better visibility
Group.new("@boolean", c.purple, nil, s.bold)            -- Bold booleans
Group.new("@type", c.blue, nil, s.italic)               -- Types in blue with italic
Group.new("@type.builtin", c.blue, nil, s.bold)         -- Bold built-in types
Group.new("@operator", c.red, nil, s.bold)             -- Bold operators for better visibility
Group.new("@punctuation", c.silver, nil, s.none)       -- Punctuation in silver
Group.new("@punctuation.bracket", c.yellow, nil, s.bold) -- Bold brackets
Group.new("@punctuation.delimiter", c.silver, nil, s.none) -- Delimiters in silver

-- Enhanced Lua-specific highlights
Group.new("@function.call.lua", c.blue, nil, s.bold)   -- Bold Lua function calls
Group.new("@function.builtin.lua", c.yellow, nil, s.bold) -- Bold Lua built-in functions

-- =====================
-- Plugin Integration
-- =====================

-- Enhanced Telescope with better contrast
Group.new("TelescopePrompt", c.superwhite, c.dark_blue_gray)           -- Telescope prompt
Group.new("TelescopeResults", c.superwhite, c.background)            -- Telescope results
Group.new("TelescopePreview", c.superwhite, c.background)              -- Telescope preview
Group.new("TelescopeSelection", c.black, c.blue)                      -- Black text on blue for better contrast
Group.new("TelescopeSelectionCaret", c.blue, c.blue)                   -- Blue selection caret
Group.new("TelescopeMatching", c.yellow, nil, s.bold)                 -- Bold matching text
Group.new("TelescopeBorder", c.blue, c.background)                     -- Blue borders for consistency
Group.new("TelescopePromptBorder", c.blue, c.dark_blue_gray)          -- Blue prompt border
Group.new("TelescopeResultsBorder", c.blue, c.background)            -- Blue results border
Group.new("TelescopePreviewBorder", c.blue, c.background)             -- Blue preview border

-- Enhanced LSP Diagnostics with better contrast
Group.new("LspDiagnosticsError", c.red, nil, s.bold)                  -- Bold LSP errors
Group.new("LspDiagnosticsWarning", c.orange, nil, s.bold)            -- Bold LSP warnings
Group.new("LspDiagnosticsInfo", c.blue, nil, s.bold)                 -- Bold LSP info
Group.new("LspDiagnosticsHint", c.cyan, nil, s.bold)                 -- Bold LSP hints
Group.new("LspDiagnosticsUnderlineError", nil, nil, s.underline)       -- Error underlines
Group.new("LspDiagnosticsUnderlineWarning", nil, nil, s.underline)   -- Warning underlines
Group.new("LspDiagnosticsUnderlineInfo", nil, nil, s.underline)      -- Info underlines
Group.new("LspDiagnosticsUnderlineHint", nil, nil, s.underline)       -- Hint underlines

-- Enhanced LSP References and Highlights
Group.new("LspReferenceRead", nil, c.blue:dark(0.3), s.none)          -- Blue read references
Group.new("LspReferenceWrite", nil, c.blue:dark(0.3), s.bold)        -- Bold blue write references
Group.new("LspReferenceText", nil, c.blue:dark(0.3), s.none)         -- Blue text references

-- Enhanced NvimTree with better contrast
Group.new("NvimTreeNormal", c.superwhite, c.background)              -- NvimTree normal
Group.new("NvimTreeFolderName", c.blue, nil, s.bold)                 -- Bold folder names
Group.new("NvimTreeOpenedFolderName", c.blue, nil, s.bold)           -- Bold opened folders
Group.new("NvimTreeEmptyFolderName", c.silver, nil, s.none)           -- Empty folders
Group.new("NvimTreeFolderIcon", c.yellow, nil, s.none)               -- Folder icons
Group.new("NvimTreeFileIcon", c.silver, nil, s.none)                 -- File icons
Group.new("NvimTreeExecFile", c.green, nil, s.bold)                   -- Bold executable files
Group.new("NvimTreeSpecialFile", c.purple, nil, s.bold)               -- Bold special files
Group.new("NvimTreeImageFile", c.pink, nil, s.none)                  -- Image files
Group.new("NvimTreeGitDirty", c.red, nil, s.bold)                     -- Bold git dirty files
Group.new("NvimTreeGitStaged", c.green, nil, s.bold)                 -- Bold git staged files
Group.new("NvimTreeGitNew", c.orange, nil, s.bold)                  -- Bold git new files

-- Enhanced BufferLine with better contrast
Group.new("BufferLineFill", c.silver, c.darkgray)                     -- Buffer line fill
Group.new("BufferLineBackground", c.silver_text, c.darkgray)         -- Inactive buffers
Group.new("BufferLineBufferSelected", c.black, c.blue)               -- Black text on blue for selected buffer
Group.new("BufferLineBufferVisible", c.superwhite, c.dark_blue_gray)  -- Visible buffers
Group.new("BufferLineIndicatorSelected", c.blue, c.blue)              -- Blue selected indicator
Group.new("BufferLineIndicatorVisible", c.blue, c.blue)               -- Blue visible indicator

-- Enhanced Indent Blankline
Group.new("IndentBlanklineChar", c.darkgray, nil, s.none)            -- Indent guides
Group.new("IndentBlanklineContextChar", c.blue, nil, s.none)         -- Blue context indent guides
Group.new("IndentBlanklineSpaceChar", c.darkgray, nil, s.none)       -- Space characters
Group.new("IndentBlanklineContextStart", c.blue, nil, s.underline)   -- Blue context start

-- =====================
-- Enhanced CustomBuddy Notes
-- =====================
-- 1. Enhanced color palette with better contrast and vibrancy
-- 2. Improved background (#1a1a1a) for better readability
-- 3. Bold styling throughout for better code navigation
-- 4. Blue accent theme for consistency across all UI elements
-- 5. Enhanced transparency support for modern terminal setups
-- 6. Comprehensive plugin integration with improved contrast
-- 7. Extended syntax highlighting with bold keywords and functions
-- 8. Professional appearance suitable for long coding sessions
-- 9. Better visual hierarchy with improved color contrast ratios
-- 10. Maintains warm, comfortable character while improving usability
