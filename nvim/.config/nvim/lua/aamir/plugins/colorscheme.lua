-- function ColorMyPencils(color)
-- 	color = color or "kanagawa-paper-ink"
-- 	vim.cmd.colorscheme(color)
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "#1f1f28" })
-- 	vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1f1f28" })
-- 	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
-- return {
-- 	{
-- 		"thesimonho/kanagawa-paper.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("kanagawa-paper").setup({
-- 				borders = true,
-- 				contrast = true,
-- 				undercurl = true,
-- 				transparent = true,
-- 				italic = true,
-- 				bold = true,
-- 				terminal_colors = true,
-- 				dim_inactive = true,
--
-- 				styles = {
-- 					-- comments: softer, not shouting
-- 					comment = { italic = true },
--
-- 					-- functions: primary anchors for reading
-- 					functions = { bold = true },
--
-- 					-- keywords: structured, not aggressive
-- 					keyword = { italic = false, bold = true },
--
-- 					-- statements: blend with keywords but lighter
-- 					statement = { italic = false, bold = false },
--
-- 					-- types: subtle distinction, easy on eyes
-- 					type = { italic = true },
-- 				},
-- 			})
--
-- 			-- Apply colorscheme
-- 			ColorMyPencils("kanagawa-paper-ink")
-- 		end,
-- 	},
-- }
-- return {
-- 	{
-- 		"shaunsingh/nord.nvim",
-- 		name = "nord",
-- 		config = function()
-- 			require("nord").set({
-- 				borders = true,
-- 				contrast = true,
-- 				disable_background = false,
-- 				italic = true,
-- 				bold = true,
-- 			})
--
-- 			-- Apply colorscheme
-- 			ColorMyPencils("nord")
-- 		end,
-- 	},
-- }

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
-- function ColorMyPencils(color)
-- 	color = color or "kanagawa-dragon"
-- 	vim.cmd.colorscheme(color)
--
-- 	-- optional: enforce clean bg (recommended)
-- 	-- vim.api.nvim_set_hl(0, "Normal", { bg = "#090E13" })
-- 	-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#14171d" })
-- end
--
-- return {
-- 	{
-- 		"rebelot/kanagawa.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("kanagawa").setup({
-- 				theme = "wave",
--
-- 				transparent = false, -- ❌ disable transparency
-- 				dimInactive = true,
-- 				terminalColors = true,
--
-- 				undercurl = true,
--
-- 				commentStyle = { italic = true },
-- 				functionStyle = { bold = true },
-- 				keywordStyle = { bold = true },
-- 				statementStyle = { bold = false },
-- 				typeStyle = { italic = true },
--
-- 				colors = {
-- 					theme = {
-- 						all = {
-- 							ui = {
-- 								bg_gutter = "none",
-- 							},
-- 						},
-- 					},
-- 				},
-- 			})
--
-- 			ColorMyPencils("kanagawa-wave")
-- 		end,
-- 	},
-- }
function ColorMyPencils(color)
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "#090E13" })
	-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#14171d" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
return {
	{
		"webhooked/kanso.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			vim.o.background = "dark" -- ensure dark mode

			require("kanso").setup({
				bold = true,
				italics = true,
				undercurl = true,

				compile = true,

				transparent = true,
				dimInactive = false,
				terminalColors = true,

				commentStyle = { italic = true },
				functionStyle = { bold = true },
				keywordStyle = { italic = true, bold = true },
				statementStyle = {},
				typeStyle = { italic = true },

				minimal = false,

				background = {
					dark = "zen",
					light = "pearl",
				},

				foreground = "default",

				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
			})

			ColorMyPencils("kanso-zen")
		end,
	},
}
