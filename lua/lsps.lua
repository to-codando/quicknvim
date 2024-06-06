local nvim_lsp = require("lspconfig")

-- Configurar typescript-tools
require("typescript-tools").setup({
	server = {
		on_attach = function(client, bufnr)
			-- Configurações adicionais (ex: inlay hints)
			require("nvim-lsp-ts-utils").setup({
				auto_inlay_hints = true,
				update_inlay_hints = "always",
			})
			require("nvim-lsp-ts-utils").setup_client(client)
		end,
	},
})

-- (Opcional) Configurar outros servidores LSP, se necessário
-- nvim_lsp.tsserver.setup {}
-- nvim_lsp.lua_ls.setup {}
-- ...
