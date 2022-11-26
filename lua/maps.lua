local keymap = vim.api.nvim_set_keymap

-- Emmet
vim.g.user_emmet_mode = 'n'
vim.g.user_emmet_leader_key = ','
local opts = { noremap = true }

-- Disable arrow keys
keymap('', '<Up>', '<Nop>', {})
keymap('', '<Down>', '<Nop>', {})
keymap('', '<Left>', '<Nop>', {})
keymap('', '<Right>', '<Nop>', {})

-- Pressing ii to escape
-- keymap('i', 'ii', '<Esc>', {})
-- keymap('v', 'ii', '<Esc>', {})

keymap('', 'gf', '<C-W>gf', {})

-- Split nav
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Split resizing
keymap('n', '>', '<C-w>>', opts)
keymap('n', '<', '<C-w><', opts)

-- New Tab
keymap('n', 'te', ':tabedit<Return>', { silent = true })

-- Splitting
keymap('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Pasting
keymap('n', 'y', '"+y', opts)
keymap('v', 'y', '"+y', opts)

-- Tree
keymap('n', 'st', ':NvimTreeToggle<cr>', opts)

-- show recent files
keymap('n', 'sr', ':Telescope oldfiles<cr>', opts)
