return {
	{
		"folke/which-key.nvim",
		opts = {
			triggers_nowait = {
				-- marks
				"`",
				"'",
				"g`",
				"g'",
				-- registers
				"<c-r>",
				-- spelling
				"z=",
			},
			window = {
				border = "rounded"
			},
		},
	},
}
