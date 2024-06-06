return function()
	local comment = require("mini.comment")
	local surround = require("mini.surround")
	local pairs = require("mini.pairs")
	local tabline = require("mini.tabline")

	-- mini.comment
	comment.setup({
		mappings = {
			comment = "gc",
			comment_line = "gcc",
			textobject = "ic",
			linewise_increase = "g>",
			linewise_decrease = "g<",
			blockwise = "gb",
			blockwise_line = "gbb",
			comment_multiline = "gcm",
		},
	})

	-- mini.surround
	surround.setup({
		mappings = {
			add = "sa", -- Adicionar surround com sa
			delete = "sd", -- Deletar surround com sd
			replace = "sr", -- Substituir surround com sr
			find = "sf", -- Encontrar surround com sf
			find_replace = "srf", -- Encontrar e substituir surround com srf
			highlight = "sh", -- Destacar surround com sh
		},
		n_lines = 15, -- Número máximo de linhas para pesquisa de surround
		search_method = "cover_or_next", -- Método de pesquisa de surround
	})

	pairs.setup({
		modes = { insert = true, command = false, terminal = false },

		mappings = {
			["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
			["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
			["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

			[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
			["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
			["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },

			['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
			["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
			["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
		},
	})
end
