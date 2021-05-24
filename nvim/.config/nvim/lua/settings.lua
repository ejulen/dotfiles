vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax enable'

-- global
local o = vim.o
o.termguicolors = true
o.ignorecase = true
o.smartcase = true
o.hidden = true
o.backup = false
o.writebackup = false
o.inccommand = 'split'
o.completeopt = 'menuone,noselect'
o.undofile = true
o.swapfile = false
o.showmode = false
o.background = 'dark'

-- window
local wo = vim.wo
wo.number = true
wo.relativenumber = true
wo.cursorline = true
wo.signcolumn = 'yes'

-- buffer
local bo = vim.bo
bo.expandtab = true
bo.tabstop = 2
bo.shiftwidth = 2

vim.cmd 'autocmd TextYankPost * lua vim.highlight.on_yank {timeout = 500}'

-- removes trailing whitespace
vim.cmd [[autocmd BufWritePre * %s/\s\+$//e]]
