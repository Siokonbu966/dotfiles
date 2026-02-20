local opt = vim.opt

-- line
opt.relativenumber = true
opt.wrap = false

-- tab & indent
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- link clipboard
opt.clipboard = "unnamedplus"

-- color scheme
vim.cmd("colorscheme kanagawa")
