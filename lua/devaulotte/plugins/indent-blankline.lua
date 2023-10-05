return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufReadPre",
  opts = {
    indent = {
      char = "│",
    },
    whitespace = {
      remove_blankline_trail = true,
    },
    scope = {
    },
    exclude = {
      filetypes = {
        "help",
        "terminal",
        "lazy",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "mason",
        "nvdash",
        "nvcheatsheet",
        "",
      },
      buftypes = { "terminal" },
    },
  },
  config = function(_, opts)
    require("ibl").setup(opts)
  end,
}
