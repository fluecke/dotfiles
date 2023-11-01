vim.opt.clipboard:append {
	"unnamed"
}

-- general behavior
vim.opt.backspace = "indent,eol,start"
vim.o.autoread = true
vim.opt.pumblend = 0

-- Display options
vim.opt.number = true
vim.opt.title = true
vim.opt.showmode = false

-- Backup
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.history = 1000

-- tabs, spaces, wrapping
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.smarttab = true
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 5

-- Be more quiet
vim.opt.shortmess:append {
	c = true, -- don't give ins-completion-menu message
	C = true, -- don't give messages while scanning for ins-completion items
	F = true, -- don't give the file info when editing a file
	I = true, -- don't give the intro message when starting Vim
	s = true, -- don't give "search hit BOTTOM, continuing at TOP" messages
}
vim.opt.report = 9999

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Wildmenu
vim.opt.wildmenu = true
vim.opt.wildmode = {
	"longest",
	"full",
}
vim.opt.wildignore:append({
	".DS_Store",
	".git",
	"*.log",
	"*.pdf",
	"*.gz",
	"*.tar",
	"*.zip",
})

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
