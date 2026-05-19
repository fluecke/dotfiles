-- general behavior
vim.o.backspace = "indent,eol,start"
vim.o.autoread = true
vim.o.pumblend = 0
vim.o.mousescroll = "ver:0,hor:0"

-- Display oions
vim.o.number = true
vim.o.title = true
vim.o.showmode = false
vim.o.winborder = 'rounded'
vim.diagnostic.config({
	virtual_lines = {
		-- Only show virtual line diagnostics for the current cursor line
		current_line = true,
	},
})

-- Backup
vim.o.undofile = true
vim.o.backup = false
vim.o.swapfile = false
vim.o.history = 1000

-- tabs, spaces, wrapping
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.shiftround = true
vim.o.smarttab = true
vim.o.scrolloff = 2
vim.o.sidescrolloff = 5
vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.breakindentopt = "shift:4"

-- Be more quiet
vim.opt.shortmess:append {
	c = true, -- don't give ins-completion-menu message
	C = true, -- don't give messages while scanning for ins-completion items
	F = true, -- don't give the file info when editing a file
	I = true, -- don't give the intro message when starting Vim
	s = true, -- don't give "search hit BOTTOM, continuing at TOP" messages
}
vim.o.report = 9999

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Wildmenu
vim.o.wildmenu = true
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
vim.o.foldlevelstart = 99
