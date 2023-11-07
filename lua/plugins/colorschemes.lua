return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    ---@class CatppuccinOptions
    opts = {
      transparent_background = true,
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
