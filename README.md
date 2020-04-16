# colorbuddy.vim

## Benefits

Live changing of colors (and inherited colors!)

![changing_colors](./example/demos/_simple.svg)

Inheritance

![inheritance](./example/demos/_inheritance.svg)

## Example

Your color buddy for making cool neovim color schemes. Write your colorscheme in lua!

Example:

```lua
local Color, colors, Group, groups, styles = require('colorbuddy').setup()

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
Group.new('Error'           , colors.red:light() , nil               , s.bold)
```


### Advanced Examples

```lua
-- Optionally, you can just use the globals created when calling `setup()`
-- No need to declare new locals
require('colorbuddy').setup()

-- If you want multiple styles, just add them!
Group.new('italicBoldFunction', colors.green, groups.Function, styles.bold + styles.italic)

-- If you want the same style as a different group, but without a style: just subtract it!
Group.new('boldFunction', colors.yellow, colors.background, groups.italicBoldFunction - styles.italic)
```
