local wk = require("which-key")
local telescope_builtin = require("telescope.builtin")
--local trouble = require("trouble.providers.lsp")

wk.register({
	e = {
		name = "Explorer",
		t = { "<cmd>NvimTreeToggle<CR>", "Toggle" },
		f = { "<cmd>NvimTreeFindFile<CR>", "Find File" },
		r = { "<cmd>NvimTreeRefresh<CR>", "Refresh" },
	},
	r = {
		name = "Rename",
		n = { "<Plug>(inc_rename_forward)", "Renomear Próxima Ocorrência" },
		p = { "<Plug>(inc_rename_backward)", "Renomear Ocorrência Anterior" },
		r = { "<cmd>IncRename<CR>", "Renomear Símbolo" },
	},
	n = {
		name = "Notifications",
		q = { "<cmd>lua require('noice').dismiss()<CR>", "Fechar Notificação" },
	},
	c = {
		name = "Code",
		d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
		y = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Go to Type Definition" },
		r = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
		i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
		h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover Documentation" },
		R = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
		a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
		f = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format" },
		x = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "Document Diagnostics" },
		X = { "<cmd>lua vim.diagnostic.setqflist()<CR>", "Workspace Diagnostics" },
		["<C-Space>"] = { "<cmd>lua require('cmp').mapping.complete()<CR>", "Completar código" },
		["<C-d>"] = { "<cmd>lua require('cmp').mapping.scroll_docs(-4)<CR>", "Rolar para baixo" },
		["<C-f>"] = { "<cmd>lua require('cmp').mapping.scroll_docs(4)<CR>", "Rolar para cima" },
		["<C-e>"] = { "<cmd>lua require('cmp').mapping.abort()<CR>", "Abortar" },
		["<CR>"] = { "<cmd>lua require('cmp').mapping.confirm({ select = true })<CR>", "Confirmar" },
	},
	f = {
		name = "Files",
		f = { "<cmd>Telescope find_files<cr>", "Find Files" },
		g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
		o = { "<cmd>Telescope file_browser<CR>", "File Browser" },
		n = { "<cmd>Telescope file_browser find_files<CR>", "Find in Current Directory" },
		c = { "<cmd>Telescope file_browser<CR>:Telescope create_new_file<CR>", "Create New File" },
		r = { "<cmd>Telescope file_browser<CR>:Telescope rename<CR>", "Rename File" },
		t = { "<cmd>Telescope treesitter<CR>", "Treesitter Symbols" },
		C = { "<cmd>Telescope git_commits<CR>", "Git Commits" },
		s = { "<cmd>Telescope git_status<CR>", "Git Status" },
		S = { "<cmd>Telescope lsp_workspace_symbols<CR>", "Workspace Symbols" },
		w = { "<cmd>w<CR>", "Save File" },
	},
	b = {
		name = "Buffer",
		c = { "<Cmd>BufferLinePickClose<CR>", "Fechar Buffer" },
		s = { "<Cmd>BufferLinePick<CR>", "Escolher Buffer" },
		n = { "<Cmd>BufferLineCycleNext<CR>", "Próximo Buffer" },
		p = { "<Cmd>BufferLineCyclePrev<CR>", "Buffer Anterior" },
		h = { "<C-h>", "Mover Buffer para Esquerda" },
		l = { "<C-l>", "Mover Buffer para Direita" },
		d = { "<Cmd>bd<CR>", "Deletar Buffer" },
		q = { "<Cmd>Bdelete!<CR>", "Forçar o fechamento do buffer" },
		b = {
			name = "Criar",
			b = { "<Cmd>enew<CR>", "Novo Buffer" },
			t = { "<Cmd>tabnew<CR>", "Nova Aba" },
		},
		k = { "<Cmd>BufferLineCloseRight<CR>", "Fechar Buffers à Direita" },
		j = { "<Cmd>BufferLineCloseLeft<CR>", "Fechar Buffers à Esquerda" },
		a = { "<Cmd>bufdo bdelete<CR>", "Fechar Todos os Buffers" },
	},
}, { prefix = "<leader>" })

local M = {}

M.lsp_keymaps = function(client, bufnr)
	local opts = { noremap = true, silent = true }
	local keymap = vim.api.nvim_buf_set_keymap
	local buf_keymap = function(mode, lhs, rhs, desc)
		keymap(bufnr, mode, lhs, rhs, opts)
		wk.register({ [lhs] = { rhs, desc } }, { buffer = bufnr, prefix = "" })
	end

	buf_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition")
	buf_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", "Hover Documentation")
	buf_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation")
	buf_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help")
	buf_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add Workspace Folder")
	buf_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove Workspace Folder")
	buf_keymap(
		"n",
		"<leader>wl",
		"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
		"List Workspace Folders"
	)
	buf_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Go to Type Definition")
	buf_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename")
	buf_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action")
	buf_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", "References")
	buf_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", "Show Diagnostics")
	buf_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous Diagnostic")
	buf_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic")
	buf_keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", "Diagnostics to Loclist")
	buf_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format")
end

return M
