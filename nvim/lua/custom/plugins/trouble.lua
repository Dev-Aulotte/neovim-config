return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  config = function()
    dofile(vim.g.base46_cache .. "trouble")
    require("trouble").setup()
    vim.keymap.set("n", "<leader>xx", function()
      require("trouble").open()
    end, { desc = "Open trouble lists." })
    vim.keymap.set("n", "<leader>xw", function()
      require("trouble").open "workspace_diagnostics"
    end, { desc = "Workspace troubles." })
    vim.keymap.set("n", "<leader>xd", function()
      require("trouble").open "document_diagnostics"
    end, { desc = "Document troubles." })
    vim.keymap.set("n", "<leader>xq", function()
      require("trouble").open "quickfix"
    end, { desc = "Trouble Quick Fix." })
    vim.keymap.set("n", "<leader>xl", function()
      require("trouble").open "loclist"
    end, { desc = "Trouble loclist" })
    vim.keymap.set("n", "gR", function()
      require("trouble").open "lsp_references"
    end, { desc = "LSP References" })
  end,
}
