return {
	{ "kylechui/nvim-surround",  opts = {}, },
	{ 'numToStr/Comment.nvim',   opts = {}, },
	{ 'stevearc/stickybuf.nvim', opts = {}, },
	{ "tpope/vim-characterize" },
	{
		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = { 'nvim-treesitter/nvim-treesitter'},
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			pipe_table = {
				preset = 'round'
			},
			completions = {
				blink = {
					enabled = true
				},
				lsp = {
					enabled = true
				}
			}
		},
	},
	{
		'SCJangra/table-nvim',
		ft = 'markdown',
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		disabled = vim.g.vscode,
		opts = {
		},
		lazy = false,
		init = function()
			require("which-key").add({
				{ "<leader>g", group = "Git" },
				{ "<leader>gh", group = "Hunk" }
			})
		end,
		keys = {
			{ "<leader>gb",  "<cmd>Gitsigns blame_line<CR>",          desc = "Blame line" },
			{ "<leader>ghr", "<cmd>Gitsigns reset_hunk<CR>",          desc = "Reset hunk" },
			{ "<leader>ghv", "<cmd>Gitsigns preview_hunk_inline<CR>", desc = "Preview hunk" },
			{ "<leader>gha", "<cmd>Gitsigns stage_hunk<CR>",          desc = "Stage hunk" },
			{ "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk<CR>",     desc = "Undo stage hunk" },
			{ "<leader>ghn", "<cmd>Gitsigns next_hunk<CR>",           desc = "Next hunk" },
			{ "<leader>ghp", "<cmd>Gitsigns previous_hunk<CR>",       desc = "Previous hunk" },
		}
	},
}
