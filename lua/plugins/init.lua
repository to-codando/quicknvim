return {
	{
		"williamboman/mason.nvim",
		config = require("plugins.mason"),
	},
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },

	{ "nvim-lua/plenary.nvim" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "L3MON4D3/LuaSnip" },
	{ "onsails/lspkind-nvim" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = require("plugins.theme"),
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-telescope/telescope-ui-select.nvim", "nvim-telescope/telescope-file-browser.nvim" },
		config = require("plugins.telescope"),
		lazy = true,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = require("plugins.alpha").config,
		lazy = true,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = require("plugins.nvim-tree"),
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = require("plugins.lualine"),
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = require("plugins.bufferline"),
	},
	{
		"folke/which-key.nvim",
		config = require("plugins.wichkey"),
	},
	{
		"deathbeam/autocomplete.nvim",
		config = require("plugins.autocomplete"),
	},
	{
		"smjonas/inc-rename.nvim",
		config = require("plugins.inc-rename"),
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = require("plugins.noice"),
	},
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		config = require("plugins.typescript-tools"),
	},
	{ "HerringtonDarkholme/yats.vim" },
	{
		"maxmellon/vim-jsx-pretty",
		config = require("plugins.vim-jsx-pretty").config,
	},
	{
		"styled-components/vim-styled-components",
		config = require("plugins.css").config,
	},
	{
		"mattn/emmet-vim",
		config = require("plugins.emmet"),
	},
	{ "ckipp01/stylua-nvim" },
	{ "dense-analysis/ale", config = require("plugins.ale") },
	{ "brenoprata10/nvim-highlight-colors", config = require("plugins.nvim-highlight-colors").config },
	{ "folke/trouble.nvim", dependencies = { "kyazdani42/nvim-web-devicons", config = require("plugins.trouble") } },
	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
		end,
	},
}
