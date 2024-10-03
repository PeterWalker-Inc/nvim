return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				-- Server-specific settings. See `:help lspconfig-setup`
				settings = {
					["rust-analyzer"] = {
						diagnostics = {
							enable = true,
						},
					},
				},
			})
		end,
	},
}
