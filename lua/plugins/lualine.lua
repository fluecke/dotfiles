return {
	{
		"nvim-lualine/lualine.nvim",
		init = function()
			vim.opt.showtabline = 2
		end,
		dependencies = {
			'kyazdani42/nvim-web-devicons'
		},
		opts = {
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "|", right = "|" },
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						"mode",
						icon = "󰀘 "
					}
				},
				lualine_b = { "branch", "diff" },
				lualine_c = {
					{
						"filename",
						file_status = true, -- Displays file status (readonly status, modified status)
						newfile_status = false, -- Display new file status (new file means no write after created)
						path = 1,
						symbols = {
							-- modified = "􁘧 ", -- Text to show when the file is modified.
							-- readonly = "􀎡 ", -- Text to show when the file is non-modifiable or readonly.
							unnamed = "[No Name]", -- Text to show for unnamed buffers.
							newfile = "[New]", -- Text to show for newly created file before first write
						},
						cond = function()
							return vim.bo.ft ~= "fugitive" and vim.bo.ft ~= "toggleterm"
						end,
					},
					{
						function()
							return " Git"
						end,
						cond = function()
							return vim.bo.ft == "fugitive"
						end,
					},
				},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "diagnostics" },
				lualine_z = {
					"location",
					{
						function()
							local reg = vim.fn.reg_recording()
							if reg == "" then return "" end -- not recording
							return "󰦚 " .. reg
						end,
						cond = function()
							local reg = vim.fn.reg_recording()
							return reg ~= ""
						end
					}
				},
			},
			tabline = {
				lualine_c = {
					{
						"buffers",
						mode = 4,
						buffers_color = {
							-- Same values as the general color option can be used here.
							active = "lualine_a_normal", -- Color for active buffer.
							inactive = "lualine_c_inactive", -- Color for inactive buffer.
						},
						filetype_names = {
							fugitive = "Git",
						},
						max_length = vim.o.columns,
					},
				},
			},
		},
	},
}
