return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	config = true,
	config = function()
		require("undotree").setup()
	end,
}
