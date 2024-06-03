
local opt = vim.opt

vim.opt.cursorline = true -- highlight the current line
vim.opt.autowrite = true 
vim.opt.autoread = true -- auto reload file if contents have changed outside of vim

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- line number config
opt.relativenumber = true
opt.number = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on ident, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register so copying works

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.showcmd = true
opt.laststatus = 2

opt.linebreak = true -- avoid wrapping a line in the middle of a word

-- folding options
opt.foldmethod = "indent" -- fold based on identation levels
opt.foldnestmax = 3 -- only fold up to three nested levels
opt.nofoldenable = true -- disable folding by default


