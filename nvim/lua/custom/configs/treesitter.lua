local options = require("plugins.configs.treesitter")

table.insert(options.ensure_installed, {
	"vim",
	"json",
	"yaml",
	"toml",
	"bash",
	"lua",
	"html",
	"css",
	"scss",
	"go",
	"gomod",
	"gosum",
	"gowork",
	"javascript",
	"typescript",
	"tsx",
	"php",
	"python",
})

return options
