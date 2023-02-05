-- [[ Keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave the insert mode
-- map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', 'nt', [[:NvimTreeToggle]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
