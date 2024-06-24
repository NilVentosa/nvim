return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("darcula-dark")
        end,
    },
    {
        "Mofiqul/dracula.nvim",
    },
    {
        "xiantang/darcula-dark.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
    },
    { "rose-pine/neovim", name = "rose-pine" },
}
