local M = {}

function M.on_attach(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

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
		{ "<leader>l",  group = "LSP" },
		{ "<leader>lw", group = "Workspaces" },
	}, { buffer = bufnr })

	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts({ desc = "Go to declaration" }))
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts({ desc = "Go to definition" }))
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts({ desc = "Show help" }))
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts({ desc = "Go to implementation" }))
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts({ desc = "Show signature information" }))
	vim.keymap.set('n', '<leader>lD', vim.lsp.buf.type_definition, opts({ desc = "Type definition" }))
	vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts({ desc = "Rename" }))
	vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, opts({ desc = "Format" }))
	vim.keymap.set({ 'n', 'v' }, '<leader>la', vim.lsp.buf.code_action, opts({ desc = "Code action" }))
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts({ desc = "Show references" }))

	-- workspace management. Necessary for multi-module projects
	vim.keymap.set('n', '<leader>lwa', vim.lsp.buf.add_workspace_folder, opts({ desc = "Add workspace folder" }))
	vim.keymap.set('n', '<leader>lwr', vim.lsp.buf.remove_workspace_folder, opts({ desc = "Remove workspace folder" }))
	vim.keymap.set('n', '<leader>lwl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, opts({ desc = "List workspace folders" }))

	if client.supports_method("textDocument/formatting") then
		local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = false })
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end
end

return M
