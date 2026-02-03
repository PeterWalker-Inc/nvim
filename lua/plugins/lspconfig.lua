return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
    		inlay_hints = { enabled = true },
  		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = vim.lsp.config
			lspconfig('lua_ls', {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { 
                                "vim",
                                "require",
                            },
						},
					},
				},
			})
			lspconfig('rust_analyzer', {
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
			lspconfig('clangd', {
				capabilities = capabilities,
  				cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
				settings = {
					clangd = {
						diagnostics = {
							enable = true,
						},
					},
				},
			})
			lspconfig('gopls', {
				capabilities = capabilities,
				cmd = {'gopls'},
				filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
			})
		end,
	},
}
