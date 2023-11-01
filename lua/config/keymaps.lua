-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

vim.keymap.set("n", "<esc>", [[:let @/=""<CR>]], { silent = true, desc = "Clear search" })

require("which-key").register({
	["<leader>b"] = { name = "Buffer" }
})
vim.keymap.set("n", "<leader>bp", [[:bp<CR>]], { silent = true, desc = "Previous" })
vim.keymap.set("n", "<leader>bn", [[:bn<CR>]], { silent = true, desc = "Next" })
vim.keymap.set("n", "<leader>bg", function()
	if vim.v.count < 1 then
		return
	end

	vim.cmd.b(vim.v.count)
end, { silent = true, desc = "<count> go to buffer" })


require("which-key").register({
	["<leader>d"] = { name = "Diagnostic" }
})
vim.keymap.set('n', '<space>de', vim.diagnostic.open_float, { desc = "Show floating" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next" })
vim.keymap.set('n', '<space>dq', vim.diagnostic.setloclist)
