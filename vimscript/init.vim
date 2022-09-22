" leader key
let mapleader=";"

" source files
source ~/.config/nvim-vim/source.vim

let python_highlight_all=1
" syntax coloring
syntax on
set conceallevel=2
set textwidth=0
set exrc
set clipboard=unnamed
set backspace=2
set noshowmode
" column on side
set signcolumn=yes
" column 80 \"some units\" away
" set colorcolumn=80
" indenting
set autoindent
set smartindent
" line numbers
set nu
set rnu
" file history
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
" searches while typing
set incsearch
" no highlighting
set nohlsearch
set scrolloff=8
" text won't wrap
set nowrap
"no bell
set belloff=all
" tabs
set tabstop=2 shiftwidth=2 softtabstop=2
set smarttab
set expandtab
" use mouse
set mouse+=a
" set cursorline

" emmet shortcuts
let g:user_emmet_mode="n"
let g:user_emmet_leader_key=","

" theming
set termguicolors
colorscheme PaperColor
let g:netrw_liststyle = 3
let g:lightline={ 'enable': {'statusline': 1, 'tabline': 0}, 'colorscheme': 'PaperColor'}

hi Normal guibg=NONE ctermbg=NONE
" highlight Normal guibg=none
" highlight NonText guibg=none
autocmd TermOpen * startinsert
