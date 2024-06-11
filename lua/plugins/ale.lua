return function()
	-- Configurações de linters e fixers por tipo de arquivo
	vim.g.ale_linters = {
		javascript = { "eslint" },
		typescript = { "eslint" },
		javascriptreact = { "eslint" },
		typescriptreact = { "eslint" },
		css = { "stylelint" },
		scss = { "stylelint" },
		sass = { "stylelint" },
		html = { "htmlhint" },
		lua = { "stylua" },
	}

	vim.g.ale_fixers = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		css = { "stylelint" },
		scss = { "stylelint" },
		sass = { "stylelint" },
		html = { "prettier" },
		lua = { "stylua" },
	}

	-- Configurações de ALE
	vim.g.ale_javascript_prettier_executable = "prettier"
	vim.g.ale_javascript_prettier_use_global = 1
	vim.g.ale_javascript_prettier_options = ""

	vim.g.ale_fix_on_save = 1 -- Fixar erros ao salvar o arquivo
	vim.g.ale_lint_on_save = 1 -- Lintar arquivos ao salvar
	vim.g.ale_lint_on_text_changed = 1 -- Não lintar ao digitar, apenas ao salvar
	vim.g.ale_completion_enabled = 0 -- Desativar a conclusão automática do ALE, usar LSP

	-- Adicionar ícones de diagnóstico
	vim.g.ale_sign_error = ""
	vim.g.ale_sign_warning = ""
	vim.g.ale_sign_info = ""
	vim.g.ale_sign_hint = ""

	-- Desativar a exibição de diagnósticos padrão
	vim.diagnostic.config({
		virtual_text = false,
		signs = true,
		underline = true,
		update_in_insert = true,
	})
end
