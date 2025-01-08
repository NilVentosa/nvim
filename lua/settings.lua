vim.g.mapleader = " "
vim.g.maplocalleader = ";"
vim.opt.guicursor = ""

vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
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




-- Create a function to execute the `ri` command and display the output
local function show_ri_output()
  -- Get the word under the cursor
  local word = vim.fn.expand("<cword>")
  if word == "" then
    vim.notify("No word under cursor", vim.log.levels.WARN)
    return
  end

  -- Run the `ri` command
  local output = vim.fn.system("ri " .. word)

  -- Check for errors
  if vim.v.shell_error ~= 0 then
    vim.notify("Error running `ri`: " .. output, vim.log.levels.ERROR)
    return
  end

  -- Create a floating window to display the output
  local buf = vim.api.nvim_create_buf(false, true) -- Create a new scratch buffer
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(output, "\n")) -- Set the output

  -- Configure the floating window
  local width = math.min(80, vim.o.columns - 4)
  local height = math.min(20, vim.o.lines - 4)
  local opts = {
    relative = "editor",
    width = width,
    height = height,
    row = (vim.o.lines - height) / 2,
    col = (vim.o.columns - width) / 2,
    style = "minimal",
    border = "rounded",
  }

  vim.api.nvim_open_win(buf, true, opts)
end

-- Set a key binding to trigger the function
vim.keymap.set("n", "<leader>ri", show_ri_output, { desc = "Run `ri` on word under cursor" })

