return {
  {
    "AckslD/nvim-trevJ.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = 'require("trevj").setup()',
    init = function()
      vim.keymap.set("n", "<leader>j", function()
        require("trevj").format_at_cursor()
      end, { desc = "Fromat on multiple lines." })
    end,
  },
}
