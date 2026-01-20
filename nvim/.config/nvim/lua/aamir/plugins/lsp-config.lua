return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"clangd",
					"pyright",
					"bashls",
					"marksman",
					"dockerls",
					"yamlls",
					"html",
					"cssls",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local servers = {
				"lua_ls",
				"ts_ls",
				"clangd",
				"pyright",
				"bashls",
				"marksman",
				"dockerls",
				"yamlls",
				"jdtls",
				"html",
				"cssls",
				"astro",
			}

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
			end
		end,
	},
}
