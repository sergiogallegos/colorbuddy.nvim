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
Color.new("black", "#000000")        -- Black for active status line text
Color.new("darkgray", "#333333")     -- Dark gray for inactive status line background
Color.new("silver", "#bbbbbb")       -- Less bright silver for active status line background
Color.new("silver_text", "#d3d3d3")  -- Silver for inactive status line text

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

-- Base editor group
Group.new("Normal", c.superwhite, c.gray0) -- Default text with dark background

-- Status Line
Group.new("StatusLine", c.black, c.silver) -- Active status line: black text on less bright silver background
Group.new("StatusLineNC", c.silver_text, c.darkgray, s.bold) -- Inactive status line: silver text on dark gray background, bold style

-- Syntax Highlighting
Group.new("@constant", c.orange, nil, s.none)          -- Constants in orange
Group.new("@function", c.yellow, nil, s.none)          -- Functions in yellow
Group.new("@function.bracket", g.Normal, g.Normal)     -- Brackets in default color
Group.new("@keyword", c.violet, nil, s.none)           -- Keywords in violet
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none) -- Faded keywords (lighter nontext)
Group.new("@property", c.blue)                         -- Properties in blue
Group.new("@variable", c.superwhite, nil)              -- Variables in superwhite
Group.new("@variable.builtin", c.purple:light():light(), g.Normal) -- Built-in variables in light purple

-- Miscellaneous
-- Lua-specific function call highlight
Group.new("@function.call.lua", c.blue:dark(), nil, nil) -- Lua function calls in dark blue

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
