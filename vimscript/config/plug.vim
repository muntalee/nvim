call plug#begin(stdpath('data') . '/plugged')
  " Important Plugins
  Plug 'godlygeek/tabular'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Themes
  Plug 'tomasr/molokai'
  Plug 'overcache/NeoSolarized'
  Plug 'tomasiser/vim-code-dark'
  Plug 'morhetz/gruvbox'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'henrynewcomer/vim-theme-papaya'
  Plug 'nlknguyen/papercolor-theme'
  " Icons
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'itchyny/lightline.vim'
  " Web Dev
  Plug 'mattn/emmet-vim'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
  " Multi Cursor
  Plug 'timlentse/vim-multiple-cursors'
  Plug 'tpope/vim-vinegar'
  " LSP and theming
  if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  endif
call plug#end()
