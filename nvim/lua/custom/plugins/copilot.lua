return {
  "zbirenbaum/copilot.lua",
  event = { "InsertEnter" },
  cmd = { "Copilot" },
  config = function()
    require "custom.configs.copilot"
  end,
}
