if not vim.g.neovide then return {} end

---@type LazySpec
return {
	"AstroNvim/astrocore",

	---@type AstroCoreOpts
	opts = {
		options = {
			opt = {
				guifont = "JetBrainsMono Nerd Font Mono,JetBrains Mono,Noto Color Emoji:h10",
			},
		},
	},
}
