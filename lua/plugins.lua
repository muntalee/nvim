-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

local status, _ = pcall(require, "packer")
if not status then
	return
end

return require("packer").startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	-- colorschemes
	use("rose-pine/neovim")
	use("ellisonleao/gruvbox.nvim")
	use("rebelot/kanagawa.nvim")
	use("navarasu/onedark.nvim")
	use("bluz71/vim-nightfly-colors")
	use("craftzdog/solarized-osaka.nvim")
	use("NLKNguyen/papercolor-theme")
	use("catppuccin/nvim")
	use("Tsuzat/NeoSolarized.nvim")
	use({
		"2nthony/vitesse.nvim",
		requires = {
			"tjdevries/colorbuddy.nvim",
		},
	})

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")
	use("neanias/everforest-nvim")

	-- essential plugins
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
	use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- vs-code like icons
	use("nvim-tree/nvim-web-devicons")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- treesitter configuration
	use("nvim-treesitter/nvim-treesitter")

	-- auto closing
	use("windwp/nvim-autopairs")
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

	-- for markdown
	use("dkarter/bullets.vim")

	-- lsp support
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
			{ "mlaursen/vim-react-snippets" },
		},
	})

	-- file manager
	use("stevearc/oil.nvim")

	-- zenmode
	use("folke/zen-mode.nvim")

	-- toggles number
	use("sitiom/nvim-numbertoggle")

	-- for diagnostics
	use("folke/trouble.nvim")

	-- tmux
	use({
		"aserowy/tmux.nvim",
		config = function()
			return require("tmux").setup()
		end,
	})

	-- indent guides
	-- use({
	--     "lukas-reineke/indent-blankline.nvim",
	--     config = function ()
	--         require("ibl").setup {
	--             indent = { char = "|" },
	--             whitespace = {
	--                 remove_blankline_trail = false,
	--             },
	--             scope = { enabled = false },
	--         }
	--     end
	-- })

	-- formatter
	use("stevearc/conform.nvim")

	-- float term
	use("voldikss/vim-floaterm")

	-- aesthetic stuff
	use("nvim-lualine/lualine.nvim")
	use("akinsho/bufferline.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
