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

-- Core colors for text and backgrounds
Color.new("white", "#f2e5bc")         -- Light text color
Color.new("superwhite", "#E0E0E0")     -- Brighter white for primary text
Color.new("black", "#000000")         -- Black for active status line text
Color.new("darkgray", "#333333")      -- Dark gray for inactive status line background
Color.new("silver", "#bbbbbb")        -- Less bright silver for active status line background
Color.new("silver_text", "#d3d3d3")   -- Silver for inactive status line text
Color.new("dark_blue_gray", "#282c34")
Color.new("transparent", "NONE")      -- Transparent background support

-- Accent colors for syntax highlighting
Color.new("red", "#cc6666")          -- Red for warnings or errors
Color.new("pink", "#fef601")         -- Pink for strings or highlights
Color.new("green", "#99cc99")        -- Green for success or variables
Color.new("yellow", "#f8fe7a")       -- Yellow for keywords or functions
Color.new("blue", "#81a2be")         -- Blue for types or constants
Color.new("aqua", "#8ec07c")         -- Aqua for additional highlights
Color.new("cyan", "#8abeb7")         -- Cyan for documentation
Color.new("purple", "#8e6fbd")       -- Purple for classes or objects
Color.new("violet", "#b294bb")       -- Violet for operators
Color.new("orange", "#de935f")       -- Orange for constants
Color.new("brown", "#a3685a")        -- Brown for properties

-- Miscellaneous colors for themes
Color.new("seagreen", "#698b69")     -- Seagreen for comments
Color.new("turquoise", "#698b69")    -- Turquoise for unused text

-- Editor background colors
local background_string = "#111111"  -- Default editor background (dark)
Color.new("background", background_string)
Color.new("gray0", background_string)

-- =====================
-- Define Highlight Groups
-- =====================

-- Base editor group (supports transparency)
Group.new("Normal", c.superwhite, c.transparent) -- Default text with transparent background

-- Status Line and UI Elements
Group.new("StatusLine", c.silver_text, c.dark_blue_gray) -- Active status line: silver text on dark blue gray background
Group.new("StatusLineNC", c.silver_text, c.darkgray, s.bold) -- Inactive status line: silver text on dark gray background, bold style
Group.new("StatusLineTerm", c.silver_text, c.dark_blue_gray) -- Terminal status line
Group.new("StatusLineTermNC", c.silver_text, c.darkgray, s.bold) -- Inactive terminal status line

-- Line numbers and cursor
Group.new("LineNr", c.silver, c.transparent) -- Line numbers
Group.new("CursorLineNr", c.yellow, c.transparent, s.bold) -- Current line number
Group.new("CursorLine", nil, c.dark_blue_gray:light(0.05)) -- Current line background
Group.new("Cursor", c.black, c.superwhite) -- Cursor
Group.new("CursorColumn", nil, c.dark_blue_gray:light(0.05)) -- Current column

-- Visual selection
Group.new("Visual", nil, c.dark_blue_gray:light(0.1)) -- Visual selection
Group.new("VisualNOS", nil, c.dark_blue_gray:light(0.05)) -- Visual selection (not owning)

-- Search and highlighting
Group.new("Search", c.black, c.yellow) -- Search highlighting
Group.new("IncSearch", c.black, c.orange) -- Incremental search
Group.new("CurSearch", c.black, c.green) -- Current search match
Group.new("MatchParen", c.black, c.cyan, s.bold) -- Matching parentheses

-- Popup menus
Group.new("Pmenu", c.superwhite, c.dark_blue_gray) -- Popup menu
Group.new("PmenuSel", c.black, c.yellow) -- Selected popup item
Group.new("PmenuSbar", nil, c.darkgray) -- Popup menu scrollbar
Group.new("PmenuThumb", nil, c.silver) -- Popup menu thumb

-- Tabs
Group.new("TabLine", c.silver_text, c.darkgray) -- Tab line
Group.new("TabLineFill", c.silver, c.darkgray) -- Tab line fill
Group.new("TabLineSel", c.black, c.silver, s.bold) -- Selected tab

-- Windows and splits
Group.new("WinSeparator", c.silver, c.transparent) -- Window separators
Group.new("VertSplit", c.silver, c.transparent) -- Vertical split
Group.new("HorizSplit", c.silver, c.transparent) -- Horizontal split

-- Folding
Group.new("FoldColumn", c.silver, c.transparent) -- Fold column
Group.new("Folded", c.silver, c.dark_blue_gray:light(0.1)) -- Folded text
Group.new("FoldColumn", c.silver, c.transparent) -- Fold column

-- Signs and diagnostics
Group.new("SignColumn", c.silver, c.transparent) -- Sign column
Group.new("DiagnosticError", c.red, nil, s.bold) -- Error diagnostics
Group.new("DiagnosticWarn", c.yellow, nil, s.none) -- Warning diagnostics
Group.new("DiagnosticInfo", c.blue, nil, s.none) -- Info diagnostics
Group.new("DiagnosticHint", c.cyan, nil, s.none) -- Hint diagnostics

-- Syntax Highlighting
Group.new("@constant", c.orange, nil, s.none)          -- Constants in orange
Group.new("@function", c.yellow, nil, s.none)          -- Functions in yellow
Group.new("@function.bracket", g.Normal, g.Normal)     -- Brackets in default color
Group.new("@keyword", c.violet, nil, s.none)           -- Keywords in violet
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none) -- Faded keywords (lighter nontext)
Group.new("@property", c.blue)                         -- Properties in blue
Group.new("@variable", c.superwhite, nil)              -- Variables in superwhite
Group.new("@variable.builtin", c.purple:light():light(), g.Normal) -- Built-in variables in light purple

-- Additional syntax groups for better coverage
Group.new("@string", c.green, nil, s.none)             -- Strings in green
Group.new("@string.escape", c.cyan, nil, s.bold)        -- String escapes in cyan
Group.new("@string.special", c.pink, nil, s.none)       -- Special strings in pink
Group.new("@comment", c.seagreen, nil, s.italic)        -- Comments in seagreen with italic
Group.new("@number", c.orange, nil, s.none)            -- Numbers in orange
Group.new("@boolean", c.purple, nil, s.none)            -- Booleans in purple
Group.new("@type", c.blue, nil, s.italic)               -- Types in blue with italic
Group.new("@type.builtin", c.blue, nil, s.bold)         -- Built-in types in bold blue
Group.new("@operator", c.red, nil, s.none)             -- Operators in red
Group.new("@punctuation", c.silver, nil, s.none)       -- Punctuation in silver
Group.new("@punctuation.bracket", c.yellow, nil, s.none) -- Brackets in yellow
Group.new("@punctuation.delimiter", c.silver, nil, s.none) -- Delimiters in silver

-- Lua-specific highlights
Group.new("@function.call.lua", c.blue:dark(), nil, nil) -- Lua function calls in dark blue
Group.new("@function.builtin.lua", c.yellow, nil, s.bold) -- Lua built-in functions

-- =====================
-- Plugin Integration
-- =====================

-- Telescope
Group.new("TelescopePrompt", c.superwhite, c.dark_blue_gray)           -- Telescope prompt
Group.new("TelescopeResults", c.superwhite, c.background)            -- Telescope results
Group.new("TelescopePreview", c.superwhite, c.background)              -- Telescope preview
Group.new("TelescopeSelection", c.black, c.yellow)                    -- Selected item
Group.new("TelescopeSelectionCaret", c.yellow, c.yellow)               -- Selection caret
Group.new("TelescopeMatching", c.orange, nil, s.bold)                 -- Matching text
Group.new("TelescopeBorder", c.silver, c.background)                   -- Telescope borders
Group.new("TelescopePromptBorder", c.silver, c.dark_blue_gray)        -- Prompt border
Group.new("TelescopeResultsBorder", c.silver, c.background)          -- Results border
Group.new("TelescopePreviewBorder", c.silver, c.background)           -- Preview border

-- LSP Diagnostics
Group.new("LspDiagnosticsError", c.red, nil, s.bold)                  -- LSP errors
Group.new("LspDiagnosticsWarning", c.yellow, nil, s.none)            -- LSP warnings
Group.new("LspDiagnosticsInfo", c.blue, nil, s.none)                 -- LSP info
Group.new("LspDiagnosticsHint", c.cyan, nil, s.none)                 -- LSP hints
Group.new("LspDiagnosticsUnderlineError", nil, nil, s.underline)       -- Error underlines
Group.new("LspDiagnosticsUnderlineWarning", nil, nil, s.underline)   -- Warning underlines
Group.new("LspDiagnosticsUnderlineInfo", nil, nil, s.underline)      -- Info underlines
Group.new("LspDiagnosticsUnderlineHint", nil, nil, s.underline)       -- Hint underlines

-- LSP References and Highlights
Group.new("LspReferenceRead", nil, c.dark_blue_gray, s.none)          -- Read references
Group.new("LspReferenceWrite", nil, c.dark_blue_gray, s.bold)        -- Write references
Group.new("LspReferenceText", nil, c.dark_blue_gray, s.none)         -- Text references

-- NvimTree
Group.new("NvimTreeNormal", c.superwhite, c.background)              -- NvimTree normal
Group.new("NvimTreeFolderName", c.blue, nil, s.bold)                 -- Folder names
Group.new("NvimTreeOpenedFolderName", c.blue, nil, s.bold)           -- Opened folders
Group.new("NvimTreeEmptyFolderName", c.silver, nil, s.none)           -- Empty folders
Group.new("NvimTreeFolderIcon", c.yellow, nil, s.none)               -- Folder icons
Group.new("NvimTreeFileIcon", c.silver, nil, s.none)                 -- File icons
Group.new("NvimTreeExecFile", c.green, nil, s.bold)                   -- Executable files
Group.new("NvimTreeSpecialFile", c.purple, nil, s.none)               -- Special files
Group.new("NvimTreeImageFile", c.pink, nil, s.none)                  -- Image files
Group.new("NvimTreeGitDirty", c.red, nil, s.none)                     -- Git dirty files
Group.new("NvimTreeGitStaged", c.green, nil, s.none)                 -- Git staged files
Group.new("NvimTreeGitNew", c.orange, nil, s.none)                  -- Git new files

-- BufferLine
Group.new("BufferLineFill", c.silver, c.darkgray)                     -- Buffer line fill
Group.new("BufferLineBackground", c.silver_text, c.darkgray)         -- Inactive buffers
Group.new("BufferLineBufferSelected", c.black, c.silver)               -- Selected buffer
Group.new("BufferLineBufferVisible", c.superwhite, c.dark_blue_gray)  -- Visible buffers
Group.new("BufferLineIndicatorSelected", c.yellow, c.yellow)          -- Selected indicator
Group.new("BufferLineIndicatorVisible", c.blue, c.blue)               -- Visible indicator

-- Indent Blankline
Group.new("IndentBlanklineChar", c.darkgray, nil, s.none)            -- Indent guides
Group.new("IndentBlanklineContextChar", c.silver, nil, s.none)       -- Context indent guides
Group.new("IndentBlanklineSpaceChar", c.darkgray, nil, s.none)       -- Space characters
Group.new("IndentBlanklineContextStart", c.silver, nil, s.underline)  -- Context start

-- =====================
-- Notes
-- =====================
-- 1. This configuration focuses on maintaining a cohesive color scheme
--    while customizing the Status Line for different modes.
-- 2. The active Status Line uses a subtle silver background with black text.
-- 3. The inactive Status Line is distinguished by a dark gray background
--    with bold silver text.
-- 4. Syntax highlighting colors align with the GruvBuddy theme but are
--    tailored for better clarity and consistency.
-- 5. Enhanced with transparency support for modern terminal setups.
-- 6. Comprehensive plugin integration for Telescope, LSP, NvimTree, BufferLine, etc.
-- 7. Extended syntax highlighting with better coverage of language constructs.
-- 8. Improved UI elements including search, selection, and diagnostic highlighting.
