-- KEYMAPPING

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- Move
keymap('n', '<c-u>', '15k',{})
keymap('n', '<c-d>', '15j',{})

-- Open files under cursor in splits
keymap('n', 'gv', ':vertical wincmd f<CR>', {})
keymap('n', 'gh', '<C-W>f', {})

-- JSON formatting
keymap('n', '<leader>j', ':%!jq .<CR>', {})

-- NETRW
keymap('n', '<C-n>', ':call ToggleNetrw()<CR>', {})

-- Telescope
keymap("n", "<leader><leader>", "<cmd>Telescope find_files<CR>", {})

-- Highlights
keymap("n", "<leader>h", "<cmd>noh<CR>", {})

-- Splits resizeing
keymap('n','<Up>', '<C-w>+', {})
keymap('n','<Down>', '<C-w>-', {})
keymap('n','<Left>', '<C-w><', {})
keymap('n','<Right>', '<C-w>>', {})
