-- ~/.config/nvim-new/lua/lsp.lua
vim.lsp.enable({
--  'lua_ls',
--  'clangd',
--  'pylance'
    'gopls'
})
vim.diagnostic.config({ virtual_text = true })

