-- Edited by @muntalee
-- Config was built using the following config:
-- https://github.com/numToStr/dotfiles/tree/master/neovim/.config/nvim/

local g   = vim.g
local o   = vim.o
local opt = vim.opt
local A   = vim.api

vim.cmd('syntax on')

vim.api.nvim_command('filetype plugin indent on')

-- Leader key
vim.g.mapleader = ' '
vim.cmd[[nnoremap <SPACE> <Nop>]]

-- Do not save when switching buffers
-- o.hidden = true

--
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8 -- Better editor UI o.number = true
o.numberwidth = 2
o.relativenumber = true
o.number = true
o.signcolumn = 'yes'
o.cursorline = true
o.cursorcolumn = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.hlsearch = false
o.showmode = false
o.termguicolors = true
o.cindent = true
o.autoindent = true
o.wrap = false
o.textwidth = 300
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.swapfile = false
o.undofile = true

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Mouse
opt.mouse = "a"
