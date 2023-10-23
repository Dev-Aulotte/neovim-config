---@type ChadrcConfig
return {
	plugins = "custom.plugins",
	ui = {
		theme = "catppuccin",
		transparency = true,

		hl_override = {
			Comment = { fg = "#e0e0e0", italic = true },
			Conditional = { bold = true },
		},

		extended_integrations = {
			"trouble",
		},

		-- lazyload it when there are 1+ buffers
		tabufline = {
			show_numbers = false,
			enabled = true,
			lazyload = true,
			overriden_modules = nil,
		},

		-- nvdash (dashboard)
		nvdash = {
			load_on_startup = true,

			header = require("custom.configs.ascii"),

			buttons = {
				{ "  Find File", "Spc f f", "Telescope find_files" },
				{ "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
				{ "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
				{ "  Bookmarks", "Spc f m", "Telescope marks" },
				{ "  Themes", "Spc f t", "Telescope themes" },
				{ "  Mappings", "Spc h k", "NvCheatsheet" },
			},
		},
	},
	lsp = {
		-- show function signatures i.e args as you type
		signature = {
			disabled = true,
			silent = true, -- silences 'no signature help available' message from appearing
		},
	},

	mappings = require("custom.mappings"),
}
