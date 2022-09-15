-- Edited by Munta
-- Config was built using the following config:
-- https://github.com/numToStr/dotfiles/tree/master/neovim/.config/nvim/

local g   = vim.g
local o   = vim.o
local opt = vim.opt
local A   = vim.api

vim.cmd('syntax on')

vim.api.nvim_command('filetype plugin indent on')

-- Leader key
vim.g.mapleader = ";"


-- o.background = 'dark'

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = false

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
o.conceallevel = 2
o.shiftwidth = 2
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.swapfile = false
o.undofile = true
o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
-- BUG This option causes an error!
-- o.jumpoptions = 'view'

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1

-- Mouse
opt.mouse = "a"

-- Templates
vim.cmd("autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/template.cpp")
vim.cmd("autocmd BufNewFile *.java 0r ~/.config/nvim/templates/template.java")
vim.cmd("autocmd BufNewFile *.c 0r ~/.config/nvim/templates/template.c")
vim.cmd("autocmd BufNewFile *.py 0r ~/.config/nvim/templates/template.py")
