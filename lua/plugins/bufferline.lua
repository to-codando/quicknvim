return function()
	local cmp = require("cmp")
	local lspkind = require("lspkind")
	local bufferline = require("bufferline")

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},
		mapping = {
			["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
			["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
			["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
			["<C-y>"] = cmp.config.disable,
			["<C-e>"] = cmp.mapping({
				i = cmp.mapping.abort(),
				c = cmp.mapping.close(),
			}),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
		},
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "buffer" },
		}),
		formatting = {
			format = lspkind.cmp_format({
				with_text = true,
				menu = {
					buffer = "[Buffer]",
					nvim_lsp = "[LSP]",
					luasnip = "[LuaSnip]",
					path = "[Path]",
				},
			}),
		},
	})

	bufferline.setup({
		options = {
			offsets = {
				{
					filetype = "NvimTree",
					text = "Nvim Tree",
					separator = true,
					text_align = "left",
				},
			},
			diagnostics = "nvim_lsp",
			separator_style = { "", "" },
			modified_icon = "●",
			show_close_icon = true,
			show_buffer_close_icons = true,
		},
	})
end
