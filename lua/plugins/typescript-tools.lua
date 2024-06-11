return function()
	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

	require("typescript-tools").setup({
		on_attach = function(client, bufnr)
			-- Desabilitar a capacidade de linting e formatação do typescript-tools
			client.resolved_capabilities.document_formatting = false
			client.resolved_capabilities.document_range_formatting = false

			-- Configuração dos keymaps para LSP
			require("keymaps").lsp_keymaps(client, bufnr)
		end,
		capabilities = capabilities,
	})
end
