# colorbuddy.nvim (Personal Fork)

> **Personal Fork**: This is a customized version of [tjdevries/colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim) with personal enhancements and custom colorschemes.

**NOTE**: Requires Neovim 0.9 or nightly

A colorscheme helper for Neovim with enhanced features and custom colorschemes.

Written in Lua! Quick & Easy Color Schemes :smile:

## 🎨 What's Different in This Fork

This personal fork includes:

- **Enhanced CustomBuddy Colorscheme**: A custom colorscheme with transparency support
- **Comprehensive Plugin Integration**: Full support for Telescope, LSP, NvimTree, BufferLine, and more
- **Extended Syntax Highlighting**: Better coverage of language constructs
- **Modern UI Elements**: Enhanced status lines, search highlighting, and diagnostic styling
- **Transparency Support**: Perfect for modern terminal setups

## 🚀 Custom Colorschemes

This fork includes **4 CustomBuddy variants** inspired by popular Neovim configurations:

### **CustomBuddy Original** (`custombuddy`)
- Warm, readable color palette
- Full transparency support
- Comprehensive plugin integration
- Enhanced syntax highlighting
- Modern UI elements

### **CustomBuddy Craftz** (`custombuddy-craftz`)
- Modern, vibrant colors inspired by [craftzdog's config](https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim)
- Blue accent theme for consistency
- Bold keywords and functions
- Better contrast than original

### **CustomBuddy Prime** (`custombuddy-prime`)
- High contrast styling inspired by [ThePrimeagen's config](https://github.com/ThePrimeagen/init.lua/tree/249f3b14cc517202c80c6babd0f9ec548351ec71)
- Green accent theme
- Bold styling throughout
- Terminal-optimized colors

### **CustomBuddy TJ** (`custombuddy-tj`)
- Professional, subtle styling inspired by [tjdevries' config](https://github.com/tjdevries/config.nvim/tree/master)
- Blue accent theme
- Subtle styling for reduced eye strain
- Professional appearance

See `COLOR_VARIANTS.md` for detailed comparison and usage recommendations.

## 📸 Screenshots

> **Note**: Screenshots coming soon! The CustomBuddy colorscheme features a warm, readable palette with excellent contrast and transparency support.

## 🚀 Quick Start

New to CustomBuddy? Check out the [Quick Start Guide](QUICKSTART.md) to get up and running in minutes!

## 📚 Documentation

- **[Quick Start Guide](QUICKSTART.md)** - Get up and running quickly
- **[Color Variants](COLOR_VARIANTS.md)** - Complete comparison of all 4 variants
- **[Color Palette](COLORS.md)** - Complete color reference and usage guidelines
- **[Improvements](IMPROVEMENTS.md)** - Detailed enhancement documentation
- **[Demo Configuration](demo/init.lua)** - Example setup with popular plugins

# Installation

Install this personal fork with your preferred package manager:

## [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
-- Lua
{
  "sergiogallegos/colorbuddy.nvim", -- Your personal fork
}
```

## [Packer](https://github.com/wbthomason/packer.nvim)

```lua
use "sergiogallegos/colorbuddy.nvim" -- Your personal fork
```

## [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'sergiogallegos/colorbuddy.nvim' " Your personal fork
```

## Manual Installation

```bash
git clone https://github.com/sergiogallegos/colorbuddy.nvim.git ~/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim
```


# Basic Usage

## Using the CustomBuddy Colorschemes

```lua
-- Choose your preferred variant
vim.cmd.colorscheme("custombuddy")        -- Original (warm, comfortable)
vim.cmd.colorscheme("custombuddy-craftz") -- Modern, vibrant (blue accents)
vim.cmd.colorscheme("custombuddy-prime")  -- High contrast (green accents)
vim.cmd.colorscheme("custombuddy-tj")     -- Professional, subtle (blue accents)
```

## CustomBuddy Features

The `custombuddy` colorscheme includes:

- **Transparency Support**: Perfect for terminal transparency
- **Plugin Integration**: Telescope, LSP, NvimTree, BufferLine, Indent Blankline
- **Enhanced Syntax**: Comprehensive language highlighting
- **Modern UI**: Improved status lines, search, and diagnostics
- **Warm Palette**: Easy on the eyes with good contrast

## 🛠️ Improvements in This Fork

This personal fork includes several enhancements over the original:

### Enhanced CustomBuddy Colorscheme
- **Transparency Support**: Full background transparency for modern terminals
- **Plugin Integration**: Complete styling for popular Neovim plugins
- **Extended Syntax**: Better language construct coverage
- **Modern UI**: Enhanced status lines, search, and diagnostic styling

### Key Features Added
- Telescope integration with borders and selection styling
- LSP diagnostics with proper error/warning/info/hint colors
- NvimTree styling with git status and file type icons
- BufferLine integration for tab management
- Indent Blankline support for better code structure
- Enhanced search and selection highlighting
- Comprehensive syntax highlighting for all language constructs

## Example

Your color buddy for making cool neovim color schemes. Write your colorscheme in lua!

You can see the enhanced CustomBuddy colorscheme implementation in `colors/custombuddy.lua`.

Example:

```lua
-- file: colors/my-colorscheme-name.lua

local colorbuddy = require('colorbuddy')

-- Set up your custom colorscheme if you want
colorbuddy.colorscheme("my-colorscheme-name")

-- And then modify as you like
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new('background',  '#282c34')
Color.new('red',         '#cc6666')
Color.new('green',       '#99cc99')
Color.new('yellow',      '#f0c674')

-- Define highlights in terms of `colors` and `groups`
Group.new('Function'        , colors.yellow      , colors.background , styles.bold)
Group.new('luaFunctionCall' , groups.Function    , groups.Function   , groups.Function)

-- Define highlights in relative terms of other colors
Group.new('Error'           , colors.red:light() , nil               , styles.bold)

-- If you want multiple styles, just add them!
Group.new('italicBoldFunction', colors.green, groups.Function, styles.bold + styles.italic)

-- If you want the same style as a different group, but without a style: just subtract it!
Group.new('boldFunction', colors.yellow, colors.background, groups.italicBoldFunction - styles.italic)
```

## Credits

This is a personal fork of [tjdevries/colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim) with custom enhancements.

**Original Author**: [TJ DeVries](https://github.com/tjdevries)  
**Fork Maintainer**: [Sergio Gallegos](https://github.com/sergiogallegos)

## CustomBuddy Colorscheme

The `custombuddy` colorscheme is a complete, modern colorscheme built with the colorbuddy framework. It includes:

- **Warm Color Palette**: Easy on the eyes with excellent contrast
- **Transparency Support**: Perfect for modern terminal setups
- **Plugin Integration**: Complete styling for popular Neovim plugins
- **Enhanced Syntax**: Comprehensive language highlighting
- **Modern UI**: Improved status lines, search, and diagnostic styling

See `colors/custombuddy.lua` for the complete implementation and `IMPROVEMENTS.md` for detailed enhancement documentation.

## License

This fork maintains the same license as the original project. See [LICENSE](LICENSE) for details.
