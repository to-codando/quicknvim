return {
	config = function()
		require("nvim-highlight-colors").setup({
			render = "virtual",
			virtual_symbol = "■",
			virtual_symbol_prefix = "",
			virtual_symbol_suffix = " ",
			virtual_symbol_position = "inline",
			enable_hex = true,
		})
	end,
}
