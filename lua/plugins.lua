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
  use 'christoomey/vim-tmux-navigator'
  -- Themes
  use 'tomasiser/vim-code-dark'
  use 'morhetz/gruvbox' use { 'dracula/vim', as = 'dracula' }
  use 'henrynewcomer/vim-theme-papaya'
  use 'folke/tokyonight.nvim'
  use 'shaunsingh/nord.nvim'
  use 'bluz71/vim-nightfly-guicolors'
  -- Icons
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  -- Tree
  use 'nvim-tree/nvim-tree.lua'
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
  -- file explorer
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- dashboard
  use 'glepnir/dashboard-nvim'
end)
