require('window-picker').setup({
  autoselect_one = true,
  hint = 'statusline-winbar',
  include_current_win = false,
  -- when you go to window selection mode, status bar will show one of
  -- following letters on them so you can use that letter to select the window
  selection_chars = 'FJDKSLA;CMRUEIWOQP',
  show_prompt = true,
  prompt_message = 'Pick window:',

  filter_rules = {
    bo = {
      -- Ignore terminal and help buffers
      filetype = { 'terminal', 'help' },
      buftype = { 'terminal', 'help' },
    },
  },
  other_win_hl_color = '#e35e4f',
  -- You can pass in the highlight name or a table of content to set as
    -- highlight
    highlights = {
        statusline = {
            focused = {
                fg = '#ededed',
                bg = '#e35e4f',
                bold = true,
            },
            unfocused = {
                fg = '#ededed',
                bg = '#44cc41',
                bold = true,
            },
        },
        winbar = {
            focused = {
                fg = '#ededed',
                bg = '#e35e4f',
                bold = true,
            },
            unfocused = {
                fg = '#ededed',
                bg = '#44cc41',
                bold = true,
            },
        },
    },
})

-- Integrate with neo-tree
local window_picker = require('window-picker')
vim.api.nvim_set_keymap('n', 'S', ':lua require("neo-tree.sources.filesystem.commands").split_with_window_picker()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 's', ':lua require("neo-tree.sources.filesystem.commands").vsplit_with_window_picker()<CR>', { noremap = true, silent = true })

-- Keybindings for window picker
vim.api.nvim_set_keymap('n', '<leader>w', ':lua require("window-picker").pick_window()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':lua local picked_window_id = require("window-picker").pick_window({ autoselect_one = false }); if picked_window_id then vim.api.nvim_set_current_win(picked_window_id) end<CR>', { noremap = true, silent = true })
