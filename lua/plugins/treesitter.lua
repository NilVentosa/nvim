return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = { "ruby", "lua" },
            highlight = { enable = true },
            indent = {
                enable = true,
                -- disable = { "ruby" },
            },
        })
    end
}

