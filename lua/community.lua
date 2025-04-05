-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.editing-support.suda-vim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- LANGUAGE PACKS
  { import = "astrocommunity.pack.cpp" },
}
