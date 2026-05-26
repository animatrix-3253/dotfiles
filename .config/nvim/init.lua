require("config.lazy") 

-- lines
vim.opt.number = true
vim.opt.relativenumber = true

-- set the tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- colorscheme
vim.opt.termguicolors = false -- change this to true when in actually terminal emulator

vim.o.background = "dark"
vim.cmd[[colorscheme pywal]]
