-- neo-tree configuration
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

require("neo-tree").setup({
  filesystem = {
    follow_current_file = true,
    filtered_items = {
      visible = true,
      show_hidden_count = true,
      hide_dotfiles = false,
      hide_gitignore = false
    }
  }
})


-- Keybindings for neo-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':Neotree reveal<CR>', { noremap = true, silent = true })

