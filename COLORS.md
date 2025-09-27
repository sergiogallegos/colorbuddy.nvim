# CustomBuddy Color Palette

This document provides a comprehensive overview of the CustomBuddy color palette and how to use it.

## 🎨 Core Colors

### Text Colors
- **`superwhite`** (`#E0E0E0`) - Primary text color, bright and readable
- **`white`** (`#f2e5bc`) - Secondary text color, warm tone
- **`black`** (`#000000`) - High contrast text for active elements
- **`silver`** (`#bbbbbb`) - Muted text for less important elements
- **`silver_text`** (`#d3d3d3`) - Status line text

### Background Colors
- **`background`** (`#111111`) - Main background color
- **`transparent`** (`NONE`) - Transparent background for terminal transparency
- **`dark_blue_gray`** (`#282c34`) - Secondary background for panels
- **`darkgray`** (`#333333`) - Inactive status line background

## 🌈 Accent Colors

### Primary Accents
- **`red`** (`#cc6666`) - Errors, warnings, important elements
- **`green`** (`#99cc99`) - Success, strings, positive elements
- **`yellow`** (`#f8fe7a`) - Keywords, functions, highlights
- **`blue`** (`#81a2be`) - Types, constants, information
- **`purple`** (`#8e6fbd`) - Classes, objects, special elements

### Secondary Accents
- **`orange`** (`#de935f`) - Numbers, constants, warnings
- **`cyan`** (`#8abeb7`) - Documentation, comments
- **`pink`** (`#fef601`) - Special strings, highlights
- **`aqua`** (`#8ec07c`) - Additional highlights
- **`violet`** (`#b294bb`) - Operators, special characters
- **`brown`** (`#a3685a`) - Properties, attributes

### Utility Colors
- **`seagreen`** (`#698b69`) - Comments, muted text
- **`turquoise`** (`#698b69`) - Unused text, placeholders

## 🎯 Color Usage Guidelines

### Syntax Highlighting
```lua
-- Functions and keywords
Group.new("@function", colors.yellow)
Group.new("@keyword", colors.violet)

-- Strings and comments
Group.new("@string", colors.green)
Group.new("@comment", colors.seagreen, nil, styles.italic)

-- Types and constants
Group.new("@type", colors.blue, nil, styles.italic)
Group.new("@constant", colors.orange)

-- Variables and operators
Group.new("@variable", colors.superwhite)
Group.new("@operator", colors.red)
```

### UI Elements
```lua
-- Status line
Group.new("StatusLine", colors.silver_text, colors.dark_blue_gray)
Group.new("StatusLineNC", colors.silver_text, colors.darkgray, styles.bold)

-- Search and selection
Group.new("Search", colors.black, colors.yellow)
Group.new("Visual", nil, colors.dark_blue_gray:light(0.1))

-- Diagnostics
Group.new("DiagnosticError", colors.red, nil, styles.bold)
Group.new("DiagnosticWarning", colors.yellow, nil, styles.none)
```

## 🔧 Color Modifications

### Lightening Colors
```lua
-- Lighten by 10% (default)
local lighter_red = colors.red:light()

-- Lighten by custom amount
local lighter_blue = colors.blue:light(0.2) -- 20% lighter
```

### Darkening Colors
```lua
-- Darken by 10% (default)
local darker_green = colors.green:dark()

-- Darken by custom amount
local darker_purple = colors.purple:dark(0.3) -- 30% darker
```

### Saturating Colors
```lua
-- Increase saturation by 10% (default)
local saturated_yellow = colors.yellow:saturate()

-- Increase saturation by custom amount
local saturated_blue = colors.blue:saturate(0.15) -- 15% more saturated
```

### Color Mixing
```lua
-- Add colors together
local mixed = colors.red:add(colors.blue, 0.3) -- 30% blue mixed with red

-- Subtract colors
local subtracted = colors.green:subtract(colors.yellow, 0.2) -- Remove 20% yellow from green
```

## 🎨 Plugin-Specific Colors

### Telescope
- **Prompt**: `superwhite` on `dark_blue_gray`
- **Results**: `superwhite` on `background`
- **Selection**: `black` on `yellow`
- **Matching**: `orange` with bold

### LSP Diagnostics
- **Error**: `red` with bold
- **Warning**: `yellow` normal
- **Info**: `blue` normal
- **Hint**: `cyan` normal

### NvimTree
- **Folder**: `blue` with bold
- **File**: `silver` normal
- **Git Dirty**: `red` normal
- **Git Staged**: `green` normal

### BufferLine
- **Active**: `black` on `silver`
- **Inactive**: `silver_text` on `darkgray`
- **Visible**: `superwhite` on `dark_blue_gray`

## 🌟 Best Practices

### Contrast
- Use `superwhite` for primary text on dark backgrounds
- Use `black` for text on light backgrounds (yellow, silver)
- Maintain sufficient contrast for readability

### Consistency
- Use the same color for similar elements across plugins
- Follow the established color hierarchy
- Use modifiers consistently (light, dark, saturate)

### Accessibility
- Ensure sufficient contrast ratios
- Test with different terminal themes
- Consider colorblind users when choosing accent colors

## 🔍 Color Testing

### Test Color Combinations
```lua
-- Test foreground/background combinations
Group.new("TestFG", colors.superwhite, colors.background)
Group.new("TestBG", colors.black, colors.yellow)

-- Test with transparency
Group.new("TestTransparent", colors.superwhite, colors.transparent)
```

### Validate Plugin Integration
```lua
-- Test plugin-specific colors
Group.new("TelescopeTest", colors.superwhite, colors.dark_blue_gray)
Group.new("LSPTest", colors.red, nil, styles.bold)
```

## 📚 References

- [Original colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)
- [Neovim highlight groups](https://neovim.io/doc/user/syntax.html#highlight-groups)
- [LSP diagnostic colors](https://neovim.io/doc/user/lsp.html#lsp-diagnostics)
- [Telescope theming](https://github.com/nvim-telescope/telescope.nvim#theming)
