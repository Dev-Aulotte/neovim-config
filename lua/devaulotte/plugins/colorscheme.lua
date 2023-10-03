return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        transparent_background = true, -- disables setting the background color.
        styles = {
          comments = {"italic"},
        },
        integrations = {
          harpoon = true,
          mason = true,
          treesitter_context = true,
          lsp_trouble = true,
          which_key = true,
        },
      })

      -- setup must be called before loading
      vim.cmd.colorscheme("catppuccin")
      -- Set comments to italic
      vim.cmd([[autocmd ColorScheme * hi Comment gui=italic]])
    end,
  },
}
