-- Carrega as configurações básicas do editor
require("settings")

-- Inicialização do Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- última versão estável
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Carrega e configura os plugins usando Lazy.nvim
require("lazy").setup(require("plugins"))

require("lsps")

require("keymaps")

require("autocmds")
