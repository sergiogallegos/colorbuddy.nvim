# CustomBuddy Color Variants

This document provides a comprehensive overview of the CustomBuddy colorscheme and its variants, inspired by popular Neovim configurations.

## 🎨 **Original CustomBuddy Analysis**

### **Current Palette Strengths:**
- ✅ **Excellent contrast** for readability
- ✅ **Warm, comfortable** color temperature
- ✅ **Professional appearance** suitable for long coding sessions
- ✅ **Good transparency support** for modern terminals

### **Areas for Improvement:**
- ⚠️ **Very dark background** (`#111111`) might be too harsh
- ⚠️ **Limited color variety** in accent palette
- ⚠️ **Could benefit from more vibrant highlights** for better code navigation

## 🚀 **New Color Variants**

### 1. **CustomBuddy Craftz** (`custombuddy-craftz`)
*Inspired by [craftzdog's dotfiles](https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim)*

**Theme**: Modern, clean, with vibrant accents

**Key Features:**
- **Background**: `#1e1e1e` (slightly lighter for better contrast)
- **Accent Color**: Blue (`#8be9fd`) throughout for consistency
- **Style**: Bold keywords and functions for better readability
- **Colors**: Vibrant, modern IDE-inspired palette
- **Best For**: Modern development, vibrant coding experience

**Color Palette:**
```lua
Background: #1e1e1e
Primary Text: #ffffff
Accents: #8be9fd (blue), #50fa7b (green), #ff79c6 (pink)
Comments: #6272a4 (blue-gray)
```

### 2. **CustomBuddy Prime** (`custombuddy-prime`)
*Inspired by [ThePrimeagen's configuration](https://github.com/ThePrimeagen/init.lua/tree/249f3b14cc517202c80c6babd0f9ec548351ec71)*

**Theme**: High contrast, bold colors, terminal-friendly

**Key Features:**
- **Background**: `#0d1117` (GitHub dark, very high contrast)
- **Accent Color**: Green (`#50fa7b`) for consistency
- **Style**: Bold styling throughout for maximum visibility
- **Colors**: High-contrast, terminal-optimized
- **Best For**: Terminal users, high-contrast preferences, long coding sessions

**Color Palette:**
```lua
Background: #0d1117
Primary Text: #ffffff
Accents: #50fa7b (green), #ff5555 (red), #f1fa8c (yellow)
Comments: #6272a4 (blue-gray)
```

### 3. **CustomBuddy TJ** (`custombuddy-tj`)
*Inspired by [tjdevries' configuration](https://github.com/tjdevries/config.nvim/tree/master)*

**Theme**: Professional, subtle, with excellent readability

**Key Features:**
- **Background**: `#1e1e1e` (professional dark)
- **Accent Color**: Blue (`#7daea3`) for consistency
- **Style**: Subtle styling for professional appearance
- **Colors**: Muted, professional palette
- **Best For**: Professional development, reduced eye strain, long sessions

**Color Palette:**
```lua
Background: #1e1e1e
Primary Text: #f0f0f0
Accents: #7daea3 (blue), #a9b665 (green), #d8a657 (yellow)
Comments: #6a6a6a (muted gray)
```

## 📊 **Comparison Table**

| Feature | Original | Craftz | Prime | TJ |
|---------|----------|--------|-------|-----|
| **Background** | `#111111` | `#1e1e1e` | `#0d1117` | `#1e1e1e` |
| **Contrast** | High | Medium-High | Very High | Medium |
| **Accent Color** | Mixed | Blue | Green | Blue |
| **Styling** | Normal | Bold | Bold | Subtle |
| **Best For** | General | Modern | Terminal | Professional |
| **Eye Strain** | Low | Low | Very Low | Very Low |

## 🎯 **Usage Recommendations**

### **Choose CustomBuddy Craftz if:**
- You prefer modern, vibrant colors
- You want better contrast than the original
- You like blue accent colors
- You work in modern IDEs and want similar styling

### **Choose CustomBuddy Prime if:**
- You work primarily in terminals
- You prefer high contrast for better visibility
- You like bold styling throughout
- You want maximum readability

### **Choose CustomBuddy TJ if:**
- You prefer professional, subtle styling
- You work long coding sessions
- You want reduced eye strain
- You prefer muted, professional colors

### **Keep Original CustomBuddy if:**
- You're happy with the current styling
- You prefer the warm color temperature
- You want to maintain your current setup

## 🚀 **Installation & Usage**

### **Install All Variants:**
```lua
-- In your Neovim config
vim.cmd.colorscheme("custombuddy")        -- Original
vim.cmd.colorscheme("custombuddy-craftz") -- Craftz variant
vim.cmd.colorscheme("custombuddy-prime")  -- Prime variant
vim.cmd.colorscheme("custombuddy-tj")     -- TJ variant
```

### **Quick Switch Between Variants:**
```lua
-- Add to your config for easy switching
vim.keymap.set("n", "<leader>cc", function()
  vim.cmd.colorscheme("custombuddy")
end, { desc = "CustomBuddy Original" })

vim.keymap.set("n", "<leader>cz", function()
  vim.cmd.colorscheme("custombuddy-craftz")
end, { desc = "CustomBuddy Craftz" })

vim.keymap.set("n", "<leader>cp", function()
  vim.cmd.colorscheme("custombuddy-prime")
end, { desc = "CustomBuddy Prime" })

vim.keymap.set("n", "<leader>ct", function()
  vim.cmd.colorscheme("custombuddy-tj")
end, { desc = "CustomBuddy TJ" })
```

## 🔧 **Customization**

All variants use the same colorbuddy framework, so you can easily customize them:

```lua
-- Example: Customize the Craftz variant
local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color

-- Override colors after loading the colorscheme
vim.cmd.colorscheme("custombuddy-craftz")
Color.new("blue", "#your_custom_blue")
```

## 📈 **Performance**

All variants maintain the same performance characteristics as the original:
- **Fast loading** with colorbuddy framework
- **Efficient color calculations** with HSL support
- **Minimal memory usage** with optimized color objects
- **Plugin compatibility** with all popular Neovim plugins

## 🎨 **Color Psychology**

### **Blue Accents (Craftz, TJ):**
- Associated with trust, stability, and professionalism
- Good for long coding sessions
- Reduces eye strain

### **Green Accents (Prime):**
- Associated with growth, success, and focus
- High contrast for better visibility
- Terminal-friendly

### **Mixed Accents (Original):**
- Balanced approach
- Warm color temperature
- Comfortable for extended use

## 🔮 **Future Enhancements**

Potential improvements for all variants:
- **Light mode variants** for each theme
- **Seasonal color adjustments** (warmer/cooler tones)
- **Accessibility improvements** (colorblind-friendly palettes)
- **Dynamic color adjustment** based on time of day
