return function()
	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

	require("typescript-tools").setup({
		on_attach = function(client, bufnr)
			-- Desabilitar a capacidade de formatação do tsserver para garantir que o ALE fará a formatação
			if client.name == "tsserver" then
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end

			-- Configuração dos keymaps para LSP
			require("keymaps").lsp_keymaps(client, bufnr)
		end,
		capabilities = capabilities,
	})
end
