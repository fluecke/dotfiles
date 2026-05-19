return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
		lazy = false,
		opts = {
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
		},
	}
}
