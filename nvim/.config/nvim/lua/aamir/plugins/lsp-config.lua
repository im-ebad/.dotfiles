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

		{
			"neovim/nvim-lspconfig",
			config = function()
				local lspconfig = require("lspconfig")
				local capabilities = require("cmp_nvim_lsp").default_capabilities()

				lspconfig.lua_ls.setup({
					capabilities = capabilities,
				})
				lspconfig.ts_ls.setup({
					capabilities = capabilities,
				})
				lspconfig.clangd.setup({
					capabilities = capabilities,
				})
				lspconfig.pyright.setup({
					capabilities = capabilities,
				})
				lspconfig.bashls.setup({
					capabilities = capabilities,
				})
				lspconfig.marksman.setup({
					capabilities = capabilities,
				})
				lspconfig.dockerls.setup({
					capabilities = capabilities,
				})
				lspconfig.yamlls.setup({
					capabilities = capabilities,
				})
				lspconfig.jdtls.setup({
					capabilities = capabilities,
				})
				lspconfig.html.setup({
					capabilities = capabilities,
				})
				lspconfig.cssls.setup({
					capabilities = capabilities,
				})
			end,
		},
	},
}
