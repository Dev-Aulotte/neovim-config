return {
  "Wansmer/treesj",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  event = { "BufRead", "BufNewFile" },
  config = function()
    require("treesj").setup({
      use_default_keymaps = true,
    })
  end,
}
