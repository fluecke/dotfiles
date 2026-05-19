vim.api.nvim_create_autocmd('FileType', {
	callback = function()
		local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
		if vim.tbl_contains(require('nvim-treesitter.config').get_installed(), lang) then
			vim.treesitter.start()
		end
		vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		vim.wo[0][0].foldmethod = 'expr'
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local bufnr = args.buf

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local function opts(more_opts)
			local default_opts = { buffer = bufnr }
			if more_opts == nil then
				return default_opts
			end

			return vim.tbl_extend("keep", more_opts, default_opts)
		end

		require("which-key").add({
			{ "<leader>l", group = "LSP" },
		}, { buffer = bufnr })

		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts({ desc = "Go to declaration" }))
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts({ desc = "Go to definition" }))
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts({ desc = "Show help" }))
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts({ desc = "Go to implementation" }))
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts({ desc = "Show signature information" }))
		vim.keymap.set('n', '<leader>lD', vim.lsp.buf.type_definition, opts({ desc = "Type definition" }))
		vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts({ desc = "Rename" }))
		vim.keymap.set({ 'n', 'v' }, '<leader>la', vim.lsp.buf.code_action, opts({ desc = "Code action" }))
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts({ desc = "Show references" }))
	end
})
