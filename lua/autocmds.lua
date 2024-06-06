-- Abre o dashboar na inicializado do nvim
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("alpha").start()
	end,
})

-- Crie um grupo de autocomandos para melhor organização
local format_on_save_group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })

-- Adicione um autocomando para formatar arquivos TSX, TS, JSX, JS e Lua antes de salvar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.tsx", "*.ts", "*.jsx", "*.js", "*.lua" },
	callback = function()
		vim.cmd("ALEFix")
	end,
	group = format_on_save_group,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = { "*.tsx", "*.jsx" }, -- Aplicar a todos os tipos de arquivo
	callback = function()
		vim.cmd([[silent! %s/className/class/g]])
	end,
})
