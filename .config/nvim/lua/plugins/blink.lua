return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	tag = "v1.3.0",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = 'enter',
		},
		cmdline = {
			enabled = false,
		},
		completion = {
			menu = {
				border = 'rounded'
			},
			documentation = {
				window = {
					border = 'rounded'
				}
			},
		},
		signature = {
			window = {
				border = 'rounded'
			}
		},
		-- fuzzy = { implementation = "lua" }
	}
}
