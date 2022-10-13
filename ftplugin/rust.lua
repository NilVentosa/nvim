vim.keymap.set("n", "<leader>rr", "<cmd>!cargo run --color=never<CR>", {buffer=0})
vim.keymap.set("n", "<leader>rt", "<cmd>!cargo test --color=never<CR>", {buffer=0})
vim.keymap.set("n", "<leader>rf", "<cmd>!cargo fmt<CR>", {buffer=0})
vim.keymap.set("n", "<leader>rc", "<cmd>!cargo check --color=never<CR>", {buffer=0})
