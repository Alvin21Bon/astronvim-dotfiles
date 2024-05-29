-- ALVIN: STOP GITIGNORED FILES FROM BEING HIDDEN IN NEOTREE

---@type LazySpec
return {
	
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = function(_, opts)
			opts.filesystem.filtered_items = {
				hide_gitignored = false,
			}
			return opts
		end,
	},

}
