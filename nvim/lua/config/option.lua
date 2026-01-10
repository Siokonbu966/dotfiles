local opt = vim.opt

-- line number
opt.number = true

-- tab & indent
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- link clipboard
opt.clipboard = "unnamedplus"

-- color scheme
vim.cmd("colorscheme kanagawa")
