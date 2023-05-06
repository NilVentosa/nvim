vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-j>", "10jzz")
vim.keymap.set("n", "<C-k>", "10kzz")
vim.keymap.set("v", "<C-j>", "10jzz")
vim.keymap.set("v", "<C-k>", "10kzz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- Open files under cursor in splits
vim.keymap.set("n", "gv", ":vertical wincmd f<CR>")
vim.keymap.set("n", "gh", "<C-W>f")

-- Json formatting
vim.keymap.set("n", "<leader>jso", ":%!jq .<CR>")

-- Highlights
vim.keymap.set("n", "<leader>h", "<cmd>noh<CR>")

-- Split resizing
vim.keymap.set("n", "<Up>", "<C-w>+")
vim.keymap.set("n", "<Down>", "<C-w>-")
vim.keymap.set("n", "<Left>", "<C-w><")
vim.keymap.set("n", "<Right>", "<C-w>>")

-- NETRW
vim.keymap.set("n", "<C-n>", ":call ToggleNetrw()<CR>")
