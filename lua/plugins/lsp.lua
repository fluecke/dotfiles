return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				opts = {
					ft = 'lua'
				}
			},
		},
		config = function()
			require('lspconfig.ui.windows').default_options.border = 'rounded'
		end
	},
	{ "b0o/schemastore.nvim" },
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = {
					"lua_ls",
					"yamlls",
					"jsonls",
					"dockerls",
					"html",
					"solargraph",
					"ts_ls",
				},
			}

			vim.lsp.enable('lua_ls')
			vim.lsp.enable('jsonls')
			vim.lsp.enable('yamlls')
			vim.lsp.enable('dockerls')
			vim.lsp.enable('html')
			vim.lsp.enable('sourcekit')
			vim.lsp.enable('solargraph')
			vim.lsp.enable('ts_ls')
		end,
		dependencies = {
			"williamboman/mason.nvim",
		}
	},
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		opts = {
			ui = {
				border = "rounded"
			}
		}
	},
}
