require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{
			"horriblename/lzn-auto-require",
			config = function()
				require("lzn-auto-require").enable()
			end,
		},
		{ import = "plugins" },
		{ "mfussenegger/nvim-dap" },
		{ "rcarriga/nvim-dap-ui" },
	},
})
