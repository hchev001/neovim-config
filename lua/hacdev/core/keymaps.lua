-- set the leader to space
vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exist insert mode with jk" })

keymap.set("n", "<leader>nh", ":nojl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>|", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in a new tab" })


keymap.set("n", "<C-k>", "<C-w>k", {desc = "Move up a pane"})
keymap.set("n", "<C-j>", "<C-w>j", {desc = "Move down a pane"})
keymap.set("n", "<C-h>", "<C-w>h", {desc = "Move left a pane"})
keymap.set("n", "<C-l>", "<C-w>l", {desc = "Move right a pane"})
