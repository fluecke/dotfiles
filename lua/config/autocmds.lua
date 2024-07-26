vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "term://*",
	callback = function(ev)
		vim.cmd.startinsert()
	end
})
