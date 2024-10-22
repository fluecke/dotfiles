return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				modules = {},
				auto_install = true,
				ensure_installed = {
					"c",
					"dockerfile",
					"html",
					"javascript",
					"lua",
					"markdown",
					"markdown_inline",
					"query",
					"regex",
					"ruby",
					"vim",
					"vimdoc",
					"yaml",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				ignore_install = {}
			})
		end
	},
}
