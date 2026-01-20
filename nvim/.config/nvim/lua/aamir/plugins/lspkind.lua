return {
	"onsails/lspkind.nvim",
	config = function()
		require("lspkind").init({
			mode = "symbol_text", -- show symbol + text
			preset = "default", -- or "codicons" if you use vscode-codicons
			symbol_map = {
				Text = "󰉿",
				Method = "󰆧",
				Function = "󰊕",
				Constructor = "󰒓",
				Variable = "󰂡",
				Class = "󰠱",
				Interface = "",
				Module = "󰏗",
				Property = "󰜢",
				Unit = "󰑭",
				Value = "󰎠",
				Enum = "",
				Keyword = "󰌋",
				Snippet = "",
				Color = "󰏘",
				File = "󰈙",
				Reference = "󰈇",
				Folder = "󰉋",
				EnumMember = "",
				Constant = "󰏿",
				Struct = "󰙅",
				Event = "",
				Operator = "󰆕",
				TypeParameter = "",
			},
		})
	end,
}
