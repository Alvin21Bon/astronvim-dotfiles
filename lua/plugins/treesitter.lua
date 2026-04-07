-- Treesitter customizations are handled with AstroCore in v6;
-- nvim-treesitter is now just a parser download utility.

---@type LazySpec
return {
	"AstroNvim/astrocore",
	---@type AstroCoreOpts
	opts = {
		treesitter = {
			ensure_installed = "all",
		},
	},
}
