return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"j-hui/fidget.nvim",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.rubocop.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end, {})
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover()
			end, {})
			vim.keymap.set("n", "<leader>d", function()
				vim.diagnostic.open_float()
			end, {})
			vim.keymap.set("n", "]d", function()
				vim.diagnostic.goto_next()
			end, {})
			vim.keymap.set("n", "[d", function()
				vim.diagnostic.goto_prev()
			end, {})
			vim.keymap.set("n", "<leader>ca", function()
				vim.lsp.buf.code_action()
			end, {})
			vim.keymap.set("n", "<leader>rr", function()
				vim.lsp.buf.references()
			end, {})
			vim.keymap.set("n", "<leader>rn", function()
				vim.lsp.buf.rename()
			end, {})
			vim.keymap.set("i", "<C-h>", function()
				vim.lsp.buf.signature_help()
			end, {})
			vim.keymap.set({ "i", "s" }, "<C-k>", function()
				return vim.snippet.active({ direction = 1 }) and vim.snippet.jump(1)
			end, { silent = true })

			vim.keymap.set({ "i", "s" }, "<C-j>", function()
				return vim.snippet.active({ direction = -1 }) and vim.snippet.jump(-1)
			end, { silent = true })
		end,
	},
}
