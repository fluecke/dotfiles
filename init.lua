vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.termguicolors = true

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	-- bootstrap lazy.nvim
	-- stylua: ignore
	vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
		lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	ui = {
		border = "rounded",
		wrap = false,
		title = " Lazy.nvim ",
		pills = false,
		backdrop = 100,
	},
	install = {
		colorscheme = { "solarized" }
	},
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

require("config.options")
require("config.keymaps")
require("config.autocmds")
