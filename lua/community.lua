-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- PLUGINS
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.editing-support.suda-vim" },

  -- LANGUAGE PACKS
  { import = "astrocommunity.pack.cpp" },

  -- import/override with your plugins folder
}
