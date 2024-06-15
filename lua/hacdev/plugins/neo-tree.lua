return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
      event_handlers = {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.opt_local.relativenumber = true
        end,
      }
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          follow_current_file = true,
          filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignore = false
          }
        },
        window = {
          mappings = {
            ["S"] = "split_with_window_picker",
            ["s"] = "vsplit_with_window_picker"
          }
        }
      })
      vim.api.nvim_set_keymap('n', '<leader>n', ':Neotree toggle<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>r', ':Neotree reveal<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>S', ':lua require("neo-tree.sources.filesystem.commands").split_with_window_picker()<CR>', {noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>s', ':lua require("neo-tree.sources.filesystem.commands").vsplit_with_window_picker()<CR>', {noremap = true, silent = true })
    end
}
