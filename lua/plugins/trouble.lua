config = function()
	require("trouble").setup({
		-- Configurações opcionais
		icons = true,
		fold_open = "",
		fold_closed = "",
		signs = {
			error = "",
			warning = "",
			hint = "",
			information = "",
		},
		use_diagnostic_signs = true,
		--use_lsp_diagnostic_signs = true, -- Use os símbolos de diagnóstico do LSP
		use_icons = true, -- Use ícones personalizados
		mode = "quickfix", -- Modo de exibição padrão
		theme = "catppuccin", -- Tema Catppuccino
		modes = {
			preview_float = {
				mode = "quickfix",
				preview = {
					type = "float",
					relative = "editor",
					border = "rounded",
					title = "Preview",
					title_pos = "center",
					position = { 0, -2 },
					size = { width = 0.3, height = 0.3 },
					zindex = 200,
				},
			},
		},
	})
end
