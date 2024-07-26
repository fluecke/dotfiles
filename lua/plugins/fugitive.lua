return {
	{
		"tpope/vim-fugitive",
		lazy = false,
		init = function()
			require("which-key").add({
				{ "<leader>g", group = "Git" },
			})
		end,
		keys = {
			{ "<leader>gs", "<cmd>Git<CR>",                desc = "status" },
			{ "<leader>ga", "<cmd>Git add %<CR>",          desc = "add" },
			{ "<leader>ge", "<cmd>Git commit --amend<CR>", desc = "amend" },
			{ "<leader>gc", "<cmd>Git commit<CR>",         desc = "commit" },
			{ "<leader>gp", "<cmd>Git push<CR>",           desc = "push" },
		},
	},
}
