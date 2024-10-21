return {
	{
		"goolord/alpha-nvim",
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			local headers = {
				{
					"                                   ",
					"  ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·.  ",
					" •█▌▐█▀▄.▀·▪     ▪█·█▌██ ·██ ▐███▪ ",
					" ▐█▐▐▌▐▀▀▪▄ ▄█▀▄ ▐█▐█•▐█·▐█ ▌▐▌▐█· ",
					" ██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌ ",
					" ▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀▀▀▀  █▪▀▀▀ ",
					"                                   ",
				},

				{
					"                                                                   ",
					" ███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ",
					" ███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ",
					" ███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ ",
					" ███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ ",
					" ███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ ",
					" ███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ ",
					" ███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ ",
					"  ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ",
					"                                                                   ",
				},

				{
					"                                                      ",
					"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗  ",
					"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ",
					"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ",
					"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ",
					"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║  ",
					"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝  ",
					"                                                      ",
				},
			}

			math.randomseed(os.time())
			dashboard.section.header.val = headers[math.random(#headers)]

			dashboard.section.buttons.val = {
				dashboard.button("i", "􀈷  New file", "<cmd>ene! | startinsert<CR>"),
				dashboard.button("ff", "  Find file", "<cmd>Telescope find_files<CR>"),
				dashboard.button("ll", "  Load Last Session", "<cmd>SessionManager load_last_session<CR>"),
				dashboard.button("ld", "  Load Directory Session", "<cmd>SessionManager load_current_dir_session<CR>"),
				dashboard.button("c", "  Configuration", "<cmd>exec 'Telescope find_files cwd=' . stdpath('config')<CR>"),
				dashboard.button("q", "  Quit", "<cmd>q<CR>"),
			}

			alpha.setup(dashboard.opts)
		end,
	}
}
