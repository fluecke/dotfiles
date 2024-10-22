-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

vim.keymap.set("n", "<esc>", [[:let @/=""<CR>]], { silent = true, desc = "Clear search" })

require("which-key").add({
	{ "<leader>b", group = "Buffer" },
})

vim.keymap.set("n", "<leader>bp", function()
	local count = vim.v.count < 1 and 1 or vim.v.count
	vim.cmd(count .. "bprevious")
end, { silent = true, desc = "Previous" })

vim.keymap.set("n", "<leader>bn", function()
	local count = vim.v.count < 1 and 1 or vim.v.count
	vim.cmd(count .. "bnext")
end, { silent = true, desc = "Next" })

vim.keymap.set("n", "<leader>bg", function()
	if vim.v.count < 1 then
		return
	end

	vim.cmd.b(vim.v.count)
end, { silent = true, desc = "<count> go to buffer" })


require("which-key").add({
	{ "<leader>d", group = "Diagnostic" },
})
vim.keymap.set('n', '<space>de', vim.diagnostic.open_float, { desc = "Show floating" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next" })
vim.keymap.set('n', '<space>dq', vim.diagnostic.setloclist, { desc = "Show quickfix" })
vim.keymap.set('n', '<space>dt', function()
	vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle" })
