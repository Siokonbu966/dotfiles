local opt = vim.opt

-- line
opt.relativenumber = true
opt.wrap = false

-- tab & indent
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- link clipboard
opt.clipboard = "unnamedplus"

-- color scheme
vim.cmd("colorscheme kanagawa")

vim.api.nvim_create_autocmd('QuitPre', {
  callback = function()
    -- 現在のウィンドウ番号を取得
    local current_win = vim.api.nvim_get_current_win()
    -- すべてのウィンドウをループして調べる
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      -- カレント以外を調査
      if win ~= current_win then
        local buf = vim.api.nvim_win_get_buf(win)
        -- buftypeが空文字（通常のバッファ）があればループ終了
        if vim.bo[buf].buftype == '' then
          return
        end
      end
    end
    -- ここまで来たらカレント以外がすべて特殊ウィンドウということなので
    -- カレント以外をすべて閉じる
    vim.cmd.only({ bang = true })
    -- この後、ウィンドウ1つの状態でquitが実行されるので、Vimが終了する
  end,
  desc = 'Close all special buffers and quit Neovim',
})
