-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- move
vim.keymap.set('n', 'k', ':normal! 1h<CR>', { silent = true })
vim.keymap.set('n', 't', ':normal! 1k<CR>', { silent = true })
vim.keymap.set('n', 'n', ':normal! 1j<CR>', { silent = true })
vim.keymap.set('n', 's', ':normal! 1l<CR>', { silent = true })
