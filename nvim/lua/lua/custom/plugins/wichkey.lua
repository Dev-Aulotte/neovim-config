return {
  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<c-r>", '"', "'", "`", "c", "v", "g" },
    init = function()
      require("core.utils").load_mappings "whichkey"
    end,
    cmd = "WhichKey",
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "whichkey")
      require("which-key").setup(opts)
      require("which-key").register {
        mode = { "n", "v" },
        ["<leader><space>"] = { name = "+Harpoon" },
        ["<leader>d"] = { name = "+Debug" },
        ["<leader>e"] = { name = "+Explore" },
        ["<leader>f"] = { name = "+File/Find" },
        ["<leader>g"] = { name = "+Git" },
        ["<leader>h"] = { name = "+Help" },
        ["<leader>p"] = { name = "+Package" },
        ["<leader>l"] = { name = "+LSP" },
        ["<leader>n"] = { name = "+Neorg" },
        ["<leader>w"] = { name = "+Workspace" },
        ["<leader>x"] = { name = "+Trouble" },
      }
    end,
  },
}
