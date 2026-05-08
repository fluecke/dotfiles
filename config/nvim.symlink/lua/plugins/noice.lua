return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				documentation = {
					opts = {
						border = 'rounded'
					}
				},
			},
			presets = {
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true,
			},
			cmdline = {
				format = {
					cmdline = {
						opts = {
							border = {
								text = {
									top = " Command ",
								},
							},
						},
					},
				},
			},
		},
	},
}
