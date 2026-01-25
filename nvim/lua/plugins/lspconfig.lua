--@type LazyPluaginSpec
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
}
