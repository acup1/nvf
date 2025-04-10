require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{
			"horriblename/lzn-auto-require",
			config = function()
				require("lzn-auto-require").enable()
			end,
		},
		{ "acup1/nvf", import = "plugins" },
		{ "mfussenegger/nvim-dap" },
		{ "rcarriga/nvim-dap-ui" },
	},
})
