# CustomBuddy Quick Start Guide

Get up and running with the CustomBuddy colorscheme in minutes!

## 🚀 Installation

### Using lazy.nvim (Recommended)

```lua
{
  "sergiogallegos/colorbuddy.nvim",
  config = function()
    vim.cmd.colorscheme("custombuddy")
  end,
}
```

### Using Packer

```lua
use {
  "sergiogallegos/colorbuddy.nvim",
  config = function()
    vim.cmd.colorscheme("custombuddy")
  end,
}
```

### Using vim-plug

```vim
Plug 'sergiogallegos/colorbuddy.nvim'
```

Then in your init.vim:
```vim
colorscheme custombuddy
```

## 🎨 Basic Usage

```lua
-- Load the colorscheme
vim.cmd.colorscheme("custombuddy")

-- Optional: Enable transparency (if your terminal supports it)
vim.opt.background = "dark"
vim.opt.termguicolors = true
```

## 🔧 Plugin Integration

CustomBuddy includes built-in support for popular plugins:

### Telescope
```lua
require('telescope').setup({
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = "➤ ",
  },
})
```

### LSP Diagnostics
```lua
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
  },
  signs = true,
  underline = true,
})
```

### BufferLine
```lua
require('bufferline').setup({
  options = {
    themable = true,
    diagnostics = "nvim_lsp",
  },
})
```

### NvimTree
```lua
require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
})
```

### Indent Blankline
```lua
require("indent_blankline").setup({
  char = "▏",
  context_char = "▏",
  show_current_context = true,
})
```

## 🎯 Features

- **Transparency Support**: Perfect for modern terminal setups
- **Plugin Integration**: Works seamlessly with Telescope, LSP, NvimTree, BufferLine
- **Enhanced Syntax**: Comprehensive language highlighting
- **Modern UI**: Improved status lines, search, and diagnostics
- **Warm Palette**: Easy on the eyes with excellent contrast

## 🛠️ Customization

### Custom Colors
```lua
local colorbuddy = require('colorbuddy')
local Color = colorbuddy.Color

-- Add custom colors
Color.new("my_red", "#ff0000")
Color.new("my_blue", "#0000ff")
```

### Custom Groups
```lua
local Group = colorbuddy.Group
local colors = colorbuddy.colors
local styles = colorbuddy.styles

-- Create custom highlight groups
Group.new("MyCustomGroup", colors.my_red, colors.background, styles.bold)
```

### Color Modifications
```lua
-- Lighten a color
local lighter_red = colors.red:light(0.2)

-- Darken a color
local darker_blue = colors.blue:dark(0.3)

-- Saturate a color
local saturated_green = colors.green:saturate(0.1)
```

## 🐛 Troubleshooting

### Colorscheme not loading
- Make sure you have Neovim 0.9+ installed
- Check that `termguicolors` is enabled: `vim.opt.termguicolors = true`

### Transparency not working
- Ensure your terminal supports transparency
- Check that `vim.opt.background = "dark"` is set

### Plugin highlights not showing
- Make sure the plugin is properly installed and configured
- Check that the plugin is loaded before the colorscheme

## 📚 Examples

See the `demo/init.lua` file for a complete example configuration with popular plugins.

## 🤝 Contributing

This is a personal fork, but feel free to:
- Report issues
- Suggest improvements
- Create your own colorschemes using the colorbuddy framework

## 📄 License

Same as the original colorbuddy.nvim project.
