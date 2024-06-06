return {
	view = {
		width = 30, -- Largura inicial da janela do NvimTree
		side = "left", -- Posição da janela (esquerda ou direita)
		-- outras configurações de visualização...
		adaptive_size = true,
	},
	renderer = {
		group_empty = true, -- Agrupa pastas vazias
		-- outras configurações de renderização...
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				item = "│ ",
				none = "  ",
			},
		},
		icons = {
			webdev_colors = true,
			show = {
				file = false,
				folder = true,
				folder_arrow = false,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "", -- 
					staged = "",
					unmerged = "",
					renamed = "➜",
					untracked = "",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	filters = {
		dotfiles = false, -- Mostra arquivos ocultos
		-- outras configurações de filtro...
	},
	git = {
		enable = true, -- Habilita a integração com o Git
		ignore = true, -- Mostra arquivos ignorados pelo Git
		-- outras configurações do Git...
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
}
