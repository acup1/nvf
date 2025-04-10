return {
  "lmantw/themify.nvim",
  config = function()
    require("themify").setup({
      {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
          require("cyberdream").setup({
            variant = "default",
            transparent = true,
            saturation = 1,
            italic_comments = false,
            hide_fillchars = false,
            borderless_pickers = false,
            terminal_colors = true,
            cache = false,
            highlights = {
              Comment = { fg = "#696969", bg = "NONE", italic = true },
            },
            overrides = function(colors)
              return {
                Comment = { fg = colors.green, bg = "NONE", italic = true },
                ["@property"] = { fg = colors.magenta, bold = true },
              }
            end,
            extensions = {
              telescope = true,
              notify = true,
              mini = true,
            },
          })
        end,
      },

      { "projekt0n/github-nvim-theme", name = "github-theme" },

      "olimorris/onedarkpro.nvim",
      "jdsimcoe/hyper.vim",
      "folke/tokyonight.nvim",
      "sho-87/kanagawa-paper.nvim",

      {
        "comfysage/evergarden",
        branch = "mega",
      },

      -- Built-in colorschemes are also supported.
      -- (Also works with any colorschemes that are installed via other plugin manager, just make sure the colorscheme is loaded before Themify is loaded.)
      "default",
    })
  end,
}
