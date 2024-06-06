return {
	config = function()
		-- Inicializar e configurar mason
		require("mason").setup()

		-- Instalar Biome e TSServer
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "tsserver" },
		})

		-- Configurar handlers para LSPs
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
		})
	end,
}
