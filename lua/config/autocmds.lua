-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local function opts(more_opts)
			local default_opts = { buffer = ev.buf }
			if more_opts == nil then
				return default_opts
			end

			return vim.tbl_extend("keep", more_opts, default_opts)
		end

		require("which-key").register({
			["<leader>l"] = { name = "LSP" },
		}, { buffer = ev.buf })

		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts({ desc = "Go to declaration" }))
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts({ desc = "Go to definition" }))
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts({ desc = "Show help" }))
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts({ desc = "Go to implementation" }))
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts({ desc = "Show signature information" }))
		vim.keymap.set('n', '<leader>lD', vim.lsp.buf.type_definition, opts({ desc = "Type definition" }))
		vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts({ desc = "Rename" }))
		vim.keymap.set({ 'n', 'v' }, '<leader>la', vim.lsp.buf.code_action, opts({ desc = "Code action" }))
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts({ desc = "Show references" }))
	end,
})
