return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup()
			require("telescope").load_extension("ui-select")
		end,
		dependencies = {
			"nvim-telescope/telescope.nvim"
		}
	},
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		version = false, -- telescope did only one release, so use HEAD for now
		init = function()
			require("which-key").add({
				{ "<leader>f", group = "Find" },
			})
		end,
		keys = {
			{
				"<leader>ff",
				"<cmd>Telescope find_files<CR>",
				desc = "Files",
				{ silent = true }
			},
			{
				"<leader>fb",
				"<cmd>Telescope buffers<CR>",
				desc = "Buffers",
				{ silent = true }
			},
			{
				"<leader>fg",
				"<cmd>Telescope live_grep<CR>",
				desc = "Live grep",
				{ silent = true }
			},
			{
				"<leader>fc",
				"<cmd>exec 'Telescope find_files cwd=' . stdpath('config')<CR>",
				desc = "Config files",
				{ silent = true },
			},
			{
				"<leader>fk",
				"<cmd>Telescope keymaps<CR>",
				desc = "Keymaps",
				{ silent = true }
			},
			{
				"<leader>fr",
				"<cmd>Telescope resume<CR>",
				desc = "Resume",
				{ silent = true }
			},
			{
				"<leader>f\"",
				"<cmd>Telescope registers<CR>",
				desc = "Registers",
				{ silent = true }
			},
			{
				"<leader>f'",
				"<cmd>Telescope marks<CR>",
				desc = "Marks",
				{ silent = true }
			}
		},
	},
}
