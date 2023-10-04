require("which-key").setup({})
require("which-key").register({
  mode = { "n", "v" },
  ["<leader>e"] = { name = "+Explore" },
  ["<leader>f"] = { name = "+File/Find" },
  ["<leader>g"] = { name = "+Git" },
  ["<leader>h"] = { name = "+Harpoon" },
  ["<leader>p"] = { name = "+Package" },
  ["<leader>l"] = { name = "+LSP" },
  ["<leader>n"] = { name = "+Neorg" },
  ["<leader>t"] = { name = "+Tabs" },
  ["<leader>S"] = { name = "+Session" },
  ["<leader>s"] = { name = "+Split" },
  ["<leader>x"] = { name = "+Trouble" },
})
