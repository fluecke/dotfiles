return {
	{ "kylechui/nvim-surround",  opts = {}, },
	{ 'numToStr/Comment.nvim',   opts = {}, },
	{ 'stevearc/stickybuf.nvim', opts = {}, },
	{ "tpope/vim-characterize" },
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		lazy = false,
		init = function()
			require("which-key").register({
				["<leader>gh"] = { name = "Hunk" },
			})
		end,
		keys = {
			{ "<leader>ghr", "<cmd>Gitsigns reset_hunk<CR>",          desc = "Reset hunk" },
			{ "<leader>ghp", "<cmd>Gitsigns preview_hunk_inline<CR>", desc = "Preview hunk" },
			{ "<leader>gha", "<cmd>Gitsigns stage_hunk<CR>",          desc = "Stage hunk" },
			{ "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk<CR>",     desc = "Undo stage hunk" },
		}
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
				highlight = "@label",
				include = {
					node_type = {
						lua = { "return_statement", "table_constructor" }
					},
				}
			},
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
				},
			},
		},
		main = "ibl",
	},
}
