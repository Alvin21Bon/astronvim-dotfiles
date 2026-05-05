---@type LazySpec
return {
	"AstroNvim/astrocore",

	---@type AstroCoreOpts
	opts = {
		filetypes = {
			extension = {
				mdx = "typescriptreact",
			},
		},
		options = {
			opt = {
				expandtab = false,
				tabstop = 2,
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
			mdx_no_diagnostics = {
				{
					event = { "BufReadPost", "BufNewFile" },
					pattern = "*.mdx",
					desc = "Silence LSP diagnostics in .mdx (tsx workaround spams on markdown)",
					callback = function(event)
						vim.diagnostic.enable(false, { bufnr = event.buf })
					end,
				},
			},
		},

		mappings = {
			n = {
				["<C-d>"] = {"<C-d>zz"},
				["<C-u>"] = {"<C-u>zz"},
				["<C-S-h>"] = {"<C-w>H", desc = "Move window left"},
				["<C-S-j>"] = {"<C-w>J", desc = "Move window down"},
				["<C-S-k>"] = {"<C-w>K", desc = "Move window up"},
				["<C-S-l>"] = {"<C-w>L", desc = "Move window right"},
			},
		},
	},
}
