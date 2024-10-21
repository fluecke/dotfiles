return {
	{
		"cormacrelf/dark-notify",
		lazy = false,
		priority = 1000,
		init = function()
			require('dark_notify').run()
		end
	},
	{
		'maxmx03/solarized.nvim',
		lazy = false,
		priority = 500,
		init = function()
			vim.cmd.colorscheme 'solarized'
		end,
		opts = {
			transparent = {
				enabled = true,
			},
			variant = "autumn"
		}
	},
}
