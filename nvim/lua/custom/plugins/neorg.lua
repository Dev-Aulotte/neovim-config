return {
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.highlights"] = {},
					["core.mode"] = {},
					["core.ui"] = {},
					["core.export"] = {},
					["core.export.markdown"] = {},
					["core.integrations.treesitter"] = {},
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.esupports.metagen"] = {},
					["core.itero"] = {},
					["core.pivot"] = {},
					["core.qol.toc"] = {},
					["core.qol.todo_items"] = {},
					["core.summary"] = {},
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/projects/notes",
							},
						},
					},
				},
			})
		end,
	},
}
