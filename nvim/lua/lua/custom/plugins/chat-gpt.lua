return {
	{
		"dreamsofcode-io/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup({
				async_api_key_cmd = "echo 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",
			})
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
}
