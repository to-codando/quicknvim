-- Configurações básicas do Neovim
vim.g.mapleader = " " -- Define a tecla líder como espaço

-- Aparência
vim.opt.number = true -- Mostra o número das linhas
vim.opt.relativenumber = true -- Mostra os números de linha relativos
vim.opt.signcolumn = "yes" -- Sempre mostra a coluna de sinais
vim.opt.wrap = false -- Desativa a quebra automática de linhas longas
vim.opt.scrolloff = 8 -- Mantém 8 linhas acima/abaixo do cursor ao rolar
vim.opt.termguicolors = true -- Habilita cores de 24 bits no terminal
vim.opt.background = "dark" -- Define o fundo como escuro (para temas)

-- Identação e espaços em branco
vim.opt.expandtab = true -- Converte tabs em espaços
vim.opt.shiftwidth = 2 -- Número de espaços para autoindentação
vim.opt.tabstop = 2 -- Número de espaços que um tab representa
vim.opt.smartindent = true -- Habilita a identação inteligente
vim.opt.autoindent = true -- Copia a indentação da linha anterior

-- Busca e substituição
vim.opt.hlsearch = true -- Destaca os resultados da busca
vim.opt.incsearch = true -- Mostra os resultados da busca enquanto você digita
vim.opt.ignorecase = true -- Ignora maiúsculas/minúsculas na busca (a menos que você use letras maiúsculas)
vim.opt.smartcase = true -- Usa maiúsculas/minúsculas na busca se você digitar letras maiúsculas

-- Histórico e desfazer/refazer
vim.opt.undofile = true -- Habilita o arquivo de desfazer para persistência
vim.opt.swapfile = false -- Desabilita o arquivo de swap (melhora a performance)
vim.opt.history = 1000 -- Armazena 1000 comandos no histórico

-- Interface do usuário
vim.opt.cmdheight = 1 -- Define a altura da linha de comando para 1
vim.opt.showmode = false -- Não mostra o modo atual (Normal, Insert, etc.)
vim.opt.showcmd = true -- Mostra o comando parcialmente digitado
vim.opt.laststatus = 2 -- Sempre mostra a barra de status
vim.opt.ruler = true -- Mostra a posição do cursor na barra de status

-- Backup e swap
vim.opt.backup = false -- Desativa o backup automático
vim.opt.writebackup = false -- Desativa o backup ao salvar
vim.opt.swapfile = false -- Desativa o uso de arquivos swap
vim.opt.updatetime = 300 -- Tempo em milissegundos para eventos como GitGutter

-- Divisão de janelas
vim.opt.splitbelow = true -- Abre novas divisões horizontais abaixo
vim.opt.splitright = true -- Abre novas divisões verticais à direita

-- Busca de arquivos
vim.opt.wildignorecase = true -- Ignora maiúsculas/minúsculas na busca de arquivos
vim.opt.wildmode = "longest,list,full" -- Modo de preenchimento automático de arquivos

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_show_hidden = 1 -- Exibe ou oculta arquivos do sistema
vim.g.vim_jsx_pretty_template_tags = "html,jsx,tsx"

-- Configuração dos sinais de diagnóstico
local signs = {
	Error = " ",
	Warn = " ",
	Hint = " ",
	Info = " ",
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
