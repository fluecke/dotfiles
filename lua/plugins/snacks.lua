local headers = {
	[[
 ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·. 
•█▌▐█▀▄.▀·▪     ▪█·█▌██ ·██ ▐███▪
▐█▐▐▌▐▀▀▪▄ ▄█▀▄ ▐█▐█•▐█·▐█ ▌▐▌▐█·
██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌
▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀▀▀▀  █▪▀▀▀
	]],

	[[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
	]],

	[[
███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄  
███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄
███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███
███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███
 ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀ 
	]],
}

math.randomseed(os.time())
local dashboardConfig = {
	enabled = true,
	preset = {
		header = headers[math.random(#headers)],
		keys = {
			{key = "i", icon = "􀈷", desc = "New file", action = "<cmd>ene! | startinsert<CR>"},
			{key = "ff", icon = "", desc = "Find file", action = "<cmd>Telescope find_files<CR>"},
			{key = "ll", icon = "", desc = "Load Last Session", action = "<cmd>SessionManager load_last_session<CR>"},
			{key = "ld", icon = "", desc = "Load Directory Session", action = "<cmd>SessionManager load_current_dir_session<CR>"},
			{key = "fc", icon = "", desc = "Configuration", action = "<cmd>exec 'Telescope find_files cwd=' . stdpath('config')<CR>"},
			{key = "q", icon = "", desc = "Quit", action = "<cmd>q<CR>"},
		},
	},
	formats = {
		header = { "%s", align = "center", hl = "WarningMsg" }
	},
	sections = {
		{ section = "header" },
		{ section = "keys", gap = 1, padding = 1 },
	},
}

return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			explorer = { enabled = true },
			dashboard = dashboardConfig,
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
			notifier = {
				enabled = true,
				style = 'fancy'
			},
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = false },
			statuscolumn = { enabled = false },
			words = { enabled = false },
		},
	}
}
