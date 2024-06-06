return {
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.load_extension("file_browser")
		telescope.load_extension("ui_select") -- Carregar a extensão ui-select

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
				find_files = {
					hidden = true,
				},
				layout_strategy = "vertical", -- ou 'center' para um popup centralizado
				layout_config = {
					width = 0.8,
					height = 0.8,
				},
			},
			extensions = {
				file_browser = {
					theme = "ivy", -- Tema (ivy, dropdown, etc.)
					hijack_netrw = true, -- Desativa o netrw e usa o telescope-file-browser
					cwd_to_path = true, -- Abre o navegador no diretório atual
					grouped = true, -- Agrupa arquivos por tipo
					files = true, -- Mostra arquivos
					folders = true, -- Mostra pastas
					hidden = true, -- Mostra arquivos ocultos
					respect_gitignore = true, -- Respeita o .gitignore
					follow = true, -- Segue links simbólicos
					depth = 1, -- Profundidade inicial da busca
					-- outras configurações...
				},
				ui_select = {
					require("telescope.themes").get_dropdown({
						-- Opções de tema para o popup
						border = true, -- Exibe borda no popup
						borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Caracteres da borda
						width = 0.8, -- Largura do popup (proporção da largura da tela)
						height = 0.8, -- Altura do popup (proporção da altura da tela)
						previewer = false, -- Desativa a pré-visualização dos resultados
						prompt_position = "top", -- Posição do prompt ("top", "bottom", "center")
						-- outras opções de tema...
					}),
				},
			},
		})
	end,
}
