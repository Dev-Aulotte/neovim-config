return {
  "Wansmer/treesj",
  cmd = { "TSJToggle" },
  opts = { use_default_keymaps = false },
  init = function()
    require("core.utils").load_mappings "treesj"
  end,
}
