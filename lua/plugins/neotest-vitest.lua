---@type LazySpec
return {
	"marilari88/neotest-vitest",
	lazy = true,

	dependencies = {
		{
			"nvim-neotest/neotest",
			opts = function(_, opts)
				if not opts.adapters then opts.adapters = {} end
				table.insert(opts.adapters, require("neotest-vitest"))
			end,
		},
	},
}
