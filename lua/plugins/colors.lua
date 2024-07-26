return {
	-- {
	-- 	dir = "~/Developer/Personal Projects/appearance-notifier.nvim",
	-- 	opts = {}
	-- },
	{
		"cormacrelf/dark-notify",
		lazy = false,
		priority = 1000,
		init = function()
			require('dark_notify').run()
		end
	},
	{
		"ishan9299/nvim-solarized-lua",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'solarized'
		end,
	},
	-- {
	-- 	'maxmx03/solarized.nvim',
	-- 	lazy = false,
	-- 	opts = {
	-- 		theme = "neo"
	-- 	},
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme 'solarized'
	-- 	end,
	-- },
}
