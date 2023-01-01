vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.laststatus = 3 -- Only one statusbar
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest,list,full'
vim.opt.splitright = true  -- Default splits right
vim.opt.splitbelow = true  -- Default splits below
vim.opt.cursorline = true -- Show cursor line
vim.opt.foldenable = false -- Disable folding
vim.opt.autowriteall = true -- Save automatically
vim.opt.clipboard = 'unnamedplus'
vim.opt.completeopt={"menu","menuone","noselect"}

