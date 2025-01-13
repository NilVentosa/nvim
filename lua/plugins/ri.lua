return {
	"NilVentosa/nvim-ri",
	opts = {},
	config = function()
		local nvimri = require("nvim-ri")
		vim.keymap.set("n", "<leader>ir", nvimri.show_ri_output, {})
	end,
}
