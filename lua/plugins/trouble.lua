config = function()
	require("trouble").setup({
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
		use_icons = true,
		mode = "float", -- Alterar o modo para "float" para exibir janelas flutuantes
		theme = "catppuccin",
		auto_open = "hover", -- Abra automaticamente o painel do Trouble ao pairar sobre um erro
		auto_close = "hover", -- Feche automaticamente o painel do Trouble ao pairar sobre um erro
		auto_preview = true, -- Mostre a visualização automática dos problemas ao pairar sobre eles
		auto_focus = true, -- Dê foco automaticamente ao Trouble ao abrir
		use_lsp_diagnostic_signs = true, -- Use os sinais de diagnóstico LSP para exibição dos problemas
	})
end
