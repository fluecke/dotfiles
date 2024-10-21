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
				ensure_installed = { "lua_ls", "yamlls" },
			}

			local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview

			---@diagnostic disable-next-line: duplicate-set-field
			function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
				opts = opts or {}
				opts.border = "rounded"
				return orig_util_open_floating_preview(contents, syntax, opts, ...)
			end

			local on_attach = require('utils.lsp').on_attach
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require('lspconfig')

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					Lua = {
						workspace = {
							checkThirdParty = false,
						},
					},
				}
			})

			lspconfig.jsonls.setup {
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					json = {
						schemas = require('schemastore').json.schemas(),
						validate = { enable = true },
					},
				},
			}

			lspconfig.yamlls.setup {
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					redhat = { telemetry = { enabled = false } },
					yaml = {
						schemaStore = {
							-- You must disable built-in schemaStore support if you want to use
							-- this plugin and its advanced options like `ignore`.
							enable = false,
							-- Avoid TypeError: Cannot read properties of undefined (reading 'length')
							url = "",
						},
						format = {
							enable = true,
						},
						schemas = require('schemastore').yaml.schemas {
							replace = {
								["bitbucket-pipelines"] = {
									description = "bitbucket pipelines overridden",
									fileMatch = { 'bitbucket-pipelines.yml' },
									name = "bitbucket-pipelines",
									url =
									"file:///Users/florian/Developer/Personal%20Projects/bitbucket-pipelines-schema/bitbucket-pipelines.schema.json"
								}
							}
						}
					}
				}
			}

			lspconfig.dockerls.setup {
				capabilities = capabilities,
				on_attach = on_attach,
			}

			lspconfig.html.setup {
				capabilities = capabilities,
				on_attach = on_attach,
			}

			lspconfig.sourcekit.setup {
				capabilities = capabilities,
				on_attach = on_attach,
				cmd = {
					"xcrun",
					"sourcekit-lsp"
				},
			}

			lspconfig.solargraph.setup {
				capabilities = capabilities,
				on_attach = on_attach,
			}

			lspconfig.ts_ls.setup {
				capabilities = capabilities,
				on_attach = on_attach,
			}

			lspconfig.jedi_language_server.setup {
				capabilities = capabilities,
				on_attach = on_attach,
			}
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
