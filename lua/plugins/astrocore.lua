---@type LazySpec
return {
	"AstroNvim/astrocore",

	---@type AstroCoreOpts
	opts = {
		options = {
			opt = {
				expandtab = false,
				tabstop = 8,
				shiftwidth = 0,
			},
		},

		autocmds = {
			filetype_tabstops = {
				{
					event = "FileType",
					pattern = "lua",
					desc = "Set Lua tabstop only for nvim config",
					callback = function(event)
						local buf_path = vim.api.nvim_buf_get_name(event.buf)
						local config_path = vim.fn.stdpath("config") .. "/"

						if buf_path:match("^" .. config_path) then vim.opt_local.tabstop = 2 end
					end,
				},
			},
		},

		mappings = {
			n = {
				["<C-d>"] = {"<C-d>zz"},
				["<C-u>"] = {"<C-u>zz"},
			},
		},
	},
}
