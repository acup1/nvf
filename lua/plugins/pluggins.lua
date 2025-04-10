return {
	{
		"ofirgall/open.nvim",
		"cbochs/grapple.nvim",
		"chentoast/marks.nvim",
		"Dan7h3x/signup.nvim",
		"VidocqH/lsp-lens.nvim",
		"nvim-treesitter/nvim-treesitter",
		"Wansmer/langmapper.nvim",
		"scottmckendry/cyberdream.nvim",
		"nvim-lualine/lualine.nvim",
	},
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = { -- set to setup table
		},
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "echasnovski/mini.icons" },
		config = function()
			require("alpha").setup(require("scripts.banner").config)
		end,
	},
	{
		"CRAG666/code_runner.nvim",
		config = true,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},

	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		config = function()
			-- Setup orgmode
			require("orgmode").setup({
				org_agenda_files = "~/orgfiles/**/*",
				org_default_notes_file = "~/orgfiles/refile.org",
			})

			-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
			-- add ~org~ to ignore_install
			-- require('nvim-treesitter.configs').setup({
			--   ensure_installed = 'all',
			--   ignore_install = { 'org' },
			-- })
		end,
	},
}
