vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4

-- " Enable pasting from global clipboard
-- " with CTRL+V in Insert mode
vim.keymap.set('i', '<C-V>', '<Esc>"+pa', { desc = 'Paste "+ buffer' })

-- Add empty line without exiting normal mode
vim.keymap.set('n', '<leader>o', 'o<ESC>')
