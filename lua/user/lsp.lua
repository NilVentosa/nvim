-- LSP
-- 

on_attach_function = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    -- lsp stuff
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gI", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "gu", "<cmd>Telescope lsp_references<CR>", {buffer=0})
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {buffer=0})
    -- diagnostics stuff
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", "<leader>D", vim.diagnostic.open_float, {buffer=0})
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", {buffer=0})
end

capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),

-- -- RUST
require 'lspconfig'.rust_analyzer.setup{
    capabilities = capabilities,
    on_attach = on_attach_function
}

-- -- GO
require 'lspconfig'.gopls.setup{
    capabilities = capabilities,
    on_attach = on_attach_function
}

