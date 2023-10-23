return {
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("todo-comments").setup {
        vim.keymap.set("n", "<leader>T", "<cmd>TodoTelescope<cr>", { desc = "List Todos", nowait = true }),
      }
    end,
  },
}
