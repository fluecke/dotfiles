return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
		lazy = false,
		opts = {
			modules = {},
			auto_install = true,
			ensure_installed = {
				"comment",
				"bash",
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
		},
	}
}
