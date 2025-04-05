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

		mappings = {
			n = {
				["<C-d>"] = {"<C-d>zz"},
				["<C-u>"] = {"<C-u>zz"},
			},
		},
	},
}
