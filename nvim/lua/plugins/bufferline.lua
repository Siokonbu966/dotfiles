return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup {}
  end,
  -- keybind
  vim.keymap.set("n", "<C-k>", "<cmd>bprev<CR>"),
  vim.keymap.set("n", "<C-s>", "<cmd>bnext<CR>"),
}
