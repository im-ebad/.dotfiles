function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "#1E222A" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "#2A303C" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"shaunsingh/nord.nvim",
		name = "nord",
		config = function()
			require("nord").set({
				borders = true,
				-- contrast = true,
				disable_background = false,
				italic = true,
				bold = true,
			})

			-- Apply colorscheme
			ColorMyPencils("nord")
		end,
	},
}

-- return {
-- 	{
-- 		"priyanshoon/rosepine",
-- 		name = "rosepine",
-- 		config = function()
-- 			local rosepine = require("rose-pine")
-- 			rosepine.setup({
-- 				styles = {
-- 					bold = true,
-- 					italic = true,
-- 					transparency = false,
-- 				},
-- 			})
--
-- 			-- Apply colorscheme
-- 			ColorMyPencils("rose-pine-main")
--
-- 			-- Set active/inactive window background
-- 			vim.api.nvim_create_autocmd({ "ColorScheme", "WinEnter", "BufEnter" }, {
-- 				callback = function()
-- 					vim.cmd("highlight Normal guibg=NONE") -- Active window (transparent)
-- 					vim.cmd("highlight NormalNC guibg=#1f1d2e blend=0") -- Inactive (dim Rosé Pine surface)
-- 				end,
-- 			})
-- 		end,
-- 	},
-- }
-- 	"ellisonleao/gruvbox.nvim",
-- 	name = "gruvbox",
-- 	config = function()
-- 		local gruvbox = require("gruvbox")
-- 		gruvbox.setup({
-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 			background = { -- :h background
-- 				light = "latte",
-- 				dark = "frappe",
-- 			},
-- 		})
-- 		ColorMyPencils("gruvbox")
-- 	end,
-- }
