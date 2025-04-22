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
			require("which-key").add({
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
	{
		"lukas-reineke/indent-blankline.nvim",
		---@module "ibl"
		---@type ibl.config
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
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
