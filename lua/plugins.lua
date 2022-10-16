return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Important Plugins
  use 'godlygeek/tabular'
  use 'jiangmiao/auto-pairs'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
 -- Themes
  use 'tomasr/molokai'
  use 'overcache/NeoSolarized'
  use 'tomasiser/vim-code-dark'
  use 'morhetz/gruvbox' use { 'dracula/vim', as = 'dracula' } use 'henrynewcomer/vim-theme-papaya'
  use 'nlknguyen/papercolor-theme'
  use 'folke/tokyonight.nvim'
  use 'shaunsingh/nord.nvim'
  -- Icons
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  -- Web Dev
  use 'mattn/emmet-vim'
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'norcalli/nvim-colorizer.lua'
  -- Multi Cursor
  use 'timlentse/vim-multiple-cursors'
  use 'tpope/vim-vinegar'
  -- LSP and theming
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'xiyaowong/nvim-transparent'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
end)
