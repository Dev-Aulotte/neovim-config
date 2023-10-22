return {
  {
    "ThePrimeagen/harpoon",
    cmd = "Harpoon",
    config = function()
      require("harpoon").setup {
        vim.keymap.set(
          "n",
          "<leader>hh",
          "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
          { noremap = true, silent = true }
        ),
      }
    end,
  },
}
