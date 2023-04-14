-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- [[ Plugins Go Here ]]
    use { 'wbthomason/packer.nvim' }                   -- Package Manager
    use { 'neovim/nvim-lspconfig' }                    -- nvim's LSP onfigurations
    use { 'simrat39/rust-tools.nvim' }                 -- rust tools used to setup nvim and rust-analyzer
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use {
        'nvim-tree/nvim-tree.lua',                     -- File system navigation
        requires = 'nvim-tree/nvim-web-devicons'       -- filesystem icons
    }
    use 'DanilaMihailov/beacon.nvim'                   -- cursor jump
    use {                                              -- status line 
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true}
    }
    use 'navarasu/onedark.nvim'                        -- Atom One Dark colorscheme
    use 'Mofiqul/adwaita.nvim'                         -- Adwaita colorscheme
    use 'Mofiqul/dracula.nvim'                         -- colorscheme
    use {
    'nvim-telescope/telescope.nvim',                   -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
    use { 'preservim/tagbar' }                         -- code structure
    use { 'Yggdroot/indentLine' }                      -- see indentation
    use { 'tpope/vim-fugitive' }                       -- git integration
    use { 'junegunn/gv.vim' }                          -- commit history
    use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
end)
