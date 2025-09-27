-- Demo configuration for CustomBuddy colorscheme
-- This shows how to use the colorscheme with popular plugins

-- Set up the colorscheme
vim.cmd.colorscheme("custombuddy")

-- Optional: Configure transparency (if your terminal supports it)
vim.opt.background = "dark"
vim.opt.termguicolors = true

-- Example plugin configurations that work well with CustomBuddy
-- (These are just examples - you don't need to install all of them)

-- Telescope configuration
if vim.g.loaded_telescope then
  require('telescope').setup({
    defaults = {
      prompt_prefix = "🔍 ",
      selection_caret = "➤ ",
      entry_prefix = "  ",
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "descending",
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          mirror = false,
        },
        vertical = {
          mirror = false,
        },
      },
    },
  })
end

-- LSP configuration
if vim.g.loaded_lsp then
  -- LSP diagnostics configuration
  vim.diagnostic.config({
    virtual_text = {
      prefix = "●",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
  })
end

-- BufferLine configuration (if using)
if vim.g.loaded_bufferline then
  require('bufferline').setup({
    options = {
      mode = "buffers",
      themable = true,
      numbers = "none",
      close_command = "bdelete! %d",
      right_mouse_command = "bdelete! %d",
      left_mouse_command = "buffer %d",
      middle_mouse_command = nil,
      indicator = {
        icon = "▎",
        style = "icon",
      },
      buffer_close_icon = "󰅖",
      modified_icon = "●",
      close_icon = "󰅖",
      left_trunc_marker = "󰅂",
      right_trunc_marker = "󰅂",
      max_name_length = 30,
      max_prefix_length = 30,
      tab_size = 21,
      diagnostics = "nvim_lsp",
      diagnostics_update_in_insert = false,
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and "󰅚 " or "󰀪 "
        return " " .. icon .. count
      end,
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
        },
      },
      color_icons = true,
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      show_duplicate_tabs = true,
      show_groups = true,
      persist_buffer_sort = true,
      move_wraps_at_ends = false,
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      sort_by = "insert_after_current",
    },
  })
end

-- NvimTree configuration (if using)
if vim.g.loaded_nvim_tree then
  require("nvim-tree").setup({
    view = {
      width = 30,
      side = "left",
      preserve_window_proportions = false,
      number = false,
      relativenumber = false,
      signcolumn = "yes",
    },
    renderer = {
      add_trailing = false,
      group_empty = false,
      highlight_git = false,
      full_name = false,
      highlight_opened_files = "none",
      root_folder_label = ":~:s?$?/..?",
      indent_width = 2,
      indent_markers = {
        enable = false,
        inline_arrows = true,
        icons = {
          corner = "└",
          edge = "│",
          item = "├",
          bottom = "─",
          none = " ",
        },
      },
      icons = {
        webdev_colors = true,
        git_placement = "before",
        padding = " ",
        symlink_arrow = " ➛ ",
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
        glyphs = {
          default = "󰈚",
          symlink = "󰉒",
          bookmark = "󰆤",
          folder = {
            arrow_closed = "󰅀",
            arrow_open = "󰅁",
            default = "󰉋",
            open = "󰝰",
            empty = "󰉊",
            empty_open = "󰷏",
            symlink = "󰉒",
            symlink_open = "󰝰",
          },
          git = {
            unstaged = "󰄱",
            staged = "󰱒",
            unmerged = "󰘬",
            renamed = "󰉕",
            untracked = "󰘏",
            deleted = "󰆴",
            ignored = "󰈟",
          },
        },
      },
      special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
      symlink_destination = true,
    },
    diagnostics = {
      enable = true,
      show_on_dirs = false,
      show_on_open_dirs = true,
      debounce_delay = 50,
      severity = {
        min = vim.diagnostic.severity.HINT,
        max = vim.diagnostic.severity.ERROR,
      },
      icons = {
        hint = "󰌵",
        info = "󰋼",
        warning = "󰀪",
        error = "󰅚",
      },
    },
    git = {
      enable = true,
      ignore = true,
      show_on_dirs = true,
      show_on_open_dirs = true,
      timeout = 400,
    },
  })
end

-- Indent Blankline configuration (if using)
if vim.g.loaded_indent_blankline then
  require("indent_blankline").setup({
    char = "▏",
    context_char = "▏",
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
    show_trailing_blankline_indent = false,
    space_char_blankline = " ",
    use_treesitter = true,
    use_treesitter_scope = true,
  })
end

print("🎨 CustomBuddy colorscheme loaded successfully!")
print("📝 This demo shows how to use CustomBuddy with popular plugins")
print("🔧 Customize the plugin configurations to match your setup")
