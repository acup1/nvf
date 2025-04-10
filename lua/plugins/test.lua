--require("lazy").setup({
--  spec = {
--    {
--      "NTBBloodbath/doom-one.nvim",
--      config = function()
--        vim.g.doom_one_cursor_coloring = false
--        vim.g.doom_one_terminal_colors = true
--        vim.g.doom_one_italic_comments = false
--        vim.g.doom_one_enable_treesitter = true
--        vim.g.doom_one_diagnostics_text_color = false
--        vim.g.doom_one_transparent_background = true
--
--        -- Pumblend transparency
--        vim.g.doom_one_pumblend_enable = false
--        vim.g.doom_one_pumblend_transparency = 20
--
--        -- Plugins integration
--        vim.g.doom_one_plugin_neorg = true
--        vim.g.doom_one_plugin_barbar = false
--        vim.g.doom_one_plugin_telescope = false
--        vim.g.doom_one_plugin_neogit = true
--        vim.g.doom_one_plugin_nvim_tree = true
--        vim.g.doom_one_plugin_dashboard = true
--        vim.g.doom_one_plugin_startify = true
--        vim.g.doom_one_plugin_whichkey = true
--        vim.g.doom_one_plugin_indent_blankline = true
--        vim.g.doom_one_plugin_vim_illuminate = true
--        vim.g.doom_one_plugin_lspsaga = false
--        vim.cmd("colorscheme doom-one")
--      end,
--    },
--  },
--})
--
--return {}
