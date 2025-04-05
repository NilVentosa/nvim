vim.g.mapleader = " "
vim.g.maplocalleader = ";"
-- vim.opt.guicursor = ""

vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.showbreak = _

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.autowriteall = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.opt.laststatus = 3 -- Only one statusbar
vim.opt.wildmenu = true
vim.opt.wildmode = "longest,list,full"
vim.opt.splitright = true -- Default splits right
vim.opt.splitbelow = true -- Default splits below
vim.opt.cursorline = true -- Show cursor line
vim.opt.foldenable = false -- Disable folding
vim.opt.autowriteall = true -- Save automatically
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "10jzz")
vim.keymap.set("n", "<C-u>", "10kzz")
vim.keymap.set("v", "<C-u>", "10jzz")
vim.keymap.set("v", "<C-d>", "10kzz")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

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
