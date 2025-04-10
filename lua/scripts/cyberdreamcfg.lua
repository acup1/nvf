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
