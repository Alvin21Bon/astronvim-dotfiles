---@type LazySpec
return {
	{
		"AstroNvim/astrocore",
		---@type AstroCoreOpts
		opts = {
			mappings = {
				n = {
					["<Leader>a"] = { desc = "AI (Claude)" },
				},
			},
		},
	},
	{
		"coder/claudecode.nvim",
		dependencies = { "folke/snacks.nvim" },
		config = true,
		keys = {
			-- Core
			{ "<Leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
			-- Context
			{ "<Leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add buffer" },
			{ "<Leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection" },
		},
	},
}
