return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")

		notify.setup({
			stages = "slide",
			timeout = 3000,
			background_colour = "NONE", --transparency
		})

		vim.notify = notify

		-- INFO
		vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = "#88C0D0" })
		vim.api.nvim_set_hl(0, "NotifyINFOIcon", { fg = "#88C0D0" })
		vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = "#88C0D0" })

		-- WARN
		vim.api.nvim_set_hl(0, "NotifyWARNBorder", { fg = "#EBCB8B" })
		vim.api.nvim_set_hl(0, "NotifyWARNIcon", { fg = "#EBCB8B" })
		vim.api.nvim_set_hl(0, "NotifyWARNTitle", { fg = "#EBCB8B" })

		-- ERROR
		vim.api.nvim_set_hl(0, "NotifyERRORBorder", { fg = "#BF616A" })
		vim.api.nvim_set_hl(0, "NotifyERRORIcon", { fg = "#BF616A" })
		vim.api.nvim_set_hl(0, "NotifyERRORTitle", { fg = "#BF616A" })

		-- DEBUG / TRACE (optional but nice)
		vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { fg = "#4C566A" })
		vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { fg = "#5E81AC" })
	end,
}
