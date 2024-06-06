return function()
	vim.g.user_emmet_settings = {
		filetypes = {
			javascriptreact = {
				extends = "html", -- Estende a configuração de HTML
				-- Sobrescreve o mapeamento de atributos
				options = {
					["attribute_name.class"] = "class",
					["attribute_name.className"] = "class",
				},
			},
			typescriptreact = {
				extends = "html", -- Estende a configuração de HTML
				-- Sobrescreve o mapeamento de atributos
				options = {
					["attribute_name.class"] = "class",
					["attribute_name.className"] = "class",
				},
			},
		},
	}

	vim.cmd([[
    EmmetInstall
    let g:user_emmet_settings['javascript.jsx'] = {
    \   'extends' : 'jsx',
    \   'default_attributes': {
    \     'label': [{'htmlFor': ''}],
    \   }
    \}
]])
end
