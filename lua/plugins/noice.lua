return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			dashboard = { enabled = false },
			explorer = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
			notifier = {
				enabled = true,
				style = 'fancy'
			},
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = false },
			statuscolumn = { enabled = false },
			words = { enabled = false },
		},
	},
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
