-- Treesitter
local configs = require 'nvim-treesitter.configs'
configs.setup {
    ensure_installed = {'python', 'go', 'lua', 'java', 'bash', 'kotlin', 'vim', 'rust', 'hcl'},
    highlight = { enable = true },
    indent = { enable = true }
}
