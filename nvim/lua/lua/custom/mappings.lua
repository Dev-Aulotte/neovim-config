return {
	general = {
		n = {
			["<Leader>w"] = { "<CMD>w<CR>", "Save file", opts = { nowait = true } },
			["<leader>q"] = { "<CMD>q<CR>", "Quit file", opts = { nowait = true } },
			["<C-q>"] = { "<CMD>qa!<CR>", "Quit Neovim", opts = { nowait = true } },
			["x"] = { '"_x', "Delete without yanking" },
			["<C-d>"] = { "<C-d>zz<CR>", "Move half page down with curser centered" },
			["<C-u>"] = { "<C-u>zz<CR>", "Move half page up with curser centered" },
			["n"] = { "nzzzv", "Move to next search result with cursor centered" },
			["N"] = { "Nzzzv", "Move to previous search result with cursor centered" },
			["<leader>s"] = {
				[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
				"Replace word under cursor",
			},
			["C-f"] = {
				"<CMD>silent !tmux neww tmux-sessionizer<CR>",
				"Open tmux sessionizer",
			},
		},
		v = {
			["<"] = { "<gv", "Shift left" },
			[">"] = { ">gv", "Shift right" },

			["J"] = { ":m '>+1<CR>gv=gv", "Move line down" },
			["K"] = { ":m '<-2<CR>gv=gv", "Move line up" },
		},
	},

	git = {
		n = {
			["<leader>gg"] = { "<CMD>LazyGit<CR>", "Open Lazy Git" },
		},
	},

	database = {
		n = {
			["<leader>De"] = { "<CMD>DBUIToggle<CR>", "Open DBUI" },
			["<leader>Da"] = { "<CMD>DBUIAddConnection<CR>", "Add DB connection" },
			["<leader>Dl"] = { "<CMD>DBUILastQueryInfo<CR>", "Last query info" },
			["<leader>Dc"] = { "<CMD>DBUIClose<CR>", "Close DBUI" },
		},
	},

	lazy = {
		n = {
			-- Open :Lazy
			["<leader>pc"] = {
				"<cmd>Lazy clean<CR>",
				"Lazy	Clean",
			},
			["<leader>pe"] = {
				"<cmd>Lazy<CR>",
				"Lazy",
			},
			["<leader>pi"] = {
				"<cmd>Lazy install<CR>",
				"Lazy	Install",
			},
			["<leader>ps"] = {
				"<cmd>Lazy sync<CR>",
				"Lazy	Sync",
			},
			["<leader>pu"] = {
				"<cmd>Lazy update<CR>",
				"Lazy Update",
			},
		},
	},

	mason = {
		-- open mason
		n = {
			["<leader>pm"] = {
				"<cmd>Mason<CR>",
				"Mason",
			},
			["<leader>pM"] = {
				"<cmd>MasonInstallAll<CR>",
				"Mason Install All",
			},
		},
	},

	harpoon = {
		n = {
			-- harpoon mark file
			["<leader><space>m"] = {
				"<cmd>lua require('harpoon.mark').add_file()<CR>",
				"Mark file",
			},
			-- harpoon mark project
			["<leader><space>M"] = {
				"<cmd>lua require('harpoon.mark').add_project()<CR>",
				"Mark project",
			},
			-- harpoon go to mark
			["<leader><space>j"] = {
				"<cmd>lua require('harpoon.ui').nav_file(1)<CR>",
				"Go to mark",
			},
			-- harpoon go to mark
			["<leader><space>k"] = {
				"<cmd>lua require('harpoon.ui').nav_file(2)<CR>",
				"Go to mark",
			},
			-- harpoon go to mark
			["<leader><space>l"] = {
				"<cmd>lua require('harpoon.ui').nav_file(3)<CR>",
				"Go to mark",
			},
			-- harpoon go to mark
			["<leader><space>;"] = {
				"<cmd>lua require('harpoon.ui').nav_file(4)<CR>",
				"Go to mark",
			},
			-- harpoon quick menu
			["<leader><space>e"] = {
				"<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
				"Quick menu",
			},
		},
	},

	treesj = {
		plugin = true,
		n = {
			["<leader>j"] = {
				"<CMD>TSJToggle<CR>",
				"Toggle Treesitter Join/Split",
				opts = { nowait = true },
			},
		},
	},

	dap = {
		plugin = true,
		n = {
			["<leader>db"] = {
				"<cmd> DapToggleBreakpoint <CR>",
				"Add breakpoint at line",
			},
			["<leader>dus"] = {
				function()
					local widgets = require("dap.ui.widgets")
					local sidebar = widgets.sidebar(widgets.scopes)
					sidebar.open()
				end,
				"Open debugging sidebar",
			},
		},
	},

	dap_go = {
		plugin = true,
		n = {
			["<leader>dgt"] = {
				function()
					require("dap-go").debug_test()
				end,
				"Debug go test",
			},
			["<leader>dgl"] = {
				function()
					require("dap-go").debug_last()
				end,
				"Debug last go test",
			},
		},
	},

	gopher = {
		plugin = true,
		n = {
			["<leader>gsj"] = {
				"<cmd> GoTagAdd json <CR>",
				"Add json struct tags",
			},
			["<leader>gsy"] = {
				"<cmd> GoTagAdd yaml <CR>",
				"Add yaml struct tags",
			},
		},
	},

	dap_python = {
		plugin = true,
		n = {
			["<leader>dpr"] = {
				function()
					require("dap-python").test_method()
				end,
			},
		},
	},
}
