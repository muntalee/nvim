local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('', '<Up>', '<Nop>', {})
keymap('', '<Down>', '<Nop>', {})
keymap('', '<Left>', '<Nop>', {})
keymap('', '<Right>', '<Nop>', {})

keymap('i', 'ii', '<Esc>', {})
keymap('v', 'ii', '<Esc>', {})

keymap('', 'gf', '<C-W>gf', {})

keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '>', '<C-w>>', opts)
keymap('n', '<', '<C-w><', opts)

keymap('n', 'y', '"+y', opts)
keymap('v', 'y', '"+y', opts)
