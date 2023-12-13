return {
	{
		"folke/noice.nvim",
		lazy = false,
		opts = {
			lsp = {
				documentation = {
					opts = {
						border = 'rounded'
					}
				},
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
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
					search_down = {
						icon = " ",
					},
					search_up = {
						icon = " ",
					},
				},
			},
			routes = {
				{
					filter = {
						event = "msg_show",
						min_height = 5,
					},
					view = "split",
				},
				{
					filter = {
						event = "msg_show",
						any = {
							{ find = "%d+L, %d+B" },
							{ find = "; after #%d+" },
							{ find = "; before #%d+" },
							{ find = "written" },
							{ find = "Already at newest change" },
							{ find = "Already at oldest change" },
							{ find = "Pattern not found" },
						},
					},
					opts = { skip = true },
				},
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			{
				"rcarriga/nvim-notify",
				opts = {
					fps = 40,
					stages = "slide",
					timeout = 3000
				}
			}
		},
	},
}
