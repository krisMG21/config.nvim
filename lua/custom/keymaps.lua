print 'Custom keymaps loaded'

vim.g.maplocalleader = ' '

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left toggle<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree focus<CR>')
vim.keymap.set('', '<C-s>', ':w<CR>')
vim.keymap.set('', ',r', '<cmd>CellularAutomaton make_it_rain<CR>')
vim.keymap.set('', ',g', '<cmd>CellularAutomaton game_of_life<CR>')

-- vim.keymap.set('n', 'spb', '<C-w><C-s>', { desc = 'Split window horizontally' })
-- vim.keymap.set('n', 'spv', '<C-w><C-v>', { desc = 'Split window vertically' }
-- vim.keymap.set('n', '<M->>', '<C-w>>', { desc = 'Increase window width' })
-- vim.keymap.set('n', '<M-<>', '<C-w><', { desc = 'Decrease window width' })
--
-- vim.keymap.set('n', '<C-s>h', '<C-w>t<C-w>K', { desc = 'Change division to horizontal' })
-- vim.keymap.set('n', '<C-s>v', '<C-w>t<C-w>H', { desc = 'Change division to vertical' })
