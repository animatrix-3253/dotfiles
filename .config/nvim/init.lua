require("config.lazy") 

-- lines
vim.opt.number = true
vim.opt.relativenumber = true

-- set the tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- scrolloff
vim.opt.scrolloff = 5

-- colorscheme
vim.opt.termguicolors = false -- change this to true when in actually terminal emulator

-- Basic keybinds
vim.g.mapleader = " "
vim.keymap.set('n', "<Leader>x", ':Explore<CR>', {})


vim.o.background = "dark"
vim.cmd[[colorscheme pywal]]
