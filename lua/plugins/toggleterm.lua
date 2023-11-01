return {
	{
		"akinsho/toggleterm.nvim",
		lazy = false,
		init = function()
			local opts = {}
			vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
			vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
		end,
		opts = {
			shade_terminals = false,
			auto_scroll = true,
			open_mapping = [[<c-/>]],
		}
	},
}
