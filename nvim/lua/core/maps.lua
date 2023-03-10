-- Define keymaps of Neovim --

local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Delete a word
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Clear search highlighting with <leader> and c
keymap.set('n', '<leader>c', ':nohl<CR>')


-- Define keymaps of tab --
-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


-- Plugin keymaps --

-- Nvim-tree 
keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
-- Zen-mode
keymap.set('n', '<leader>z', ':ZenMode<CR>')
