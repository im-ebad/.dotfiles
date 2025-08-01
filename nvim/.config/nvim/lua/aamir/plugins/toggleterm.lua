return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			size = 15,
			open_mapping = [[<C-\>]], -- Shortcut to toggle terminal
			direction = "float", -- "vertical" or "float" also available
			shade_terminals = true,
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
			persist_size = true,
			close_on_exit = true,
		})
	end,
	keys = {
		{ "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
	},
}
