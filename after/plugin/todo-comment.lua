require("todo-comments").setup({
  vim.keymap.set("n", "<leader>T", "<cmd>TodoTelescope<cr>", { desc = "List Todos" }),
})
