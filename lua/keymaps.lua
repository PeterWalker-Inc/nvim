vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>ft",  vim.lsp.buf.format, {})
vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>")

vim.diagnostic.config({
  virtual_text = false
})
vim.keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>" )

vim.keymap.set("n", '<leader>i',
  function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}),{0})
end)

-- Open compiler
vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

-- vim.o.updatetime = 250
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- Diagnostic Toggle
-- Command to toggle inline diagnostics
-- vim.api.nvim_create_user_command(
--   'DiagnosticsToggleVirtualText',
--   function()
--     local current_value = vim.diagnostic.config().virtual_text
--     if current_value then
--       vim.diagnostic.config({virtual_text = false})
--     else
--       vim.diagnostic.config({virtual_text = true})
--     end
--   end,
--   {}
-- )
--
-- Command to toggle diagnostics
-- vim.api.nvim_create_user_command(
--   'DiagnosticsToggle',
--   function()
--     local current_value = vim.diagnostic.is_disabled()
--     if current_value then
--       vim.diagnostic.enable()
--     else
--       vim.diagnostic.disable()
--     end
--   end,
--   {}
-- )

-- Keybinding to toggle inline diagnostics (ii)
--vim.api.nvim_set_keymap('n', '<Leader>ii', ':lua vim.cmd("DiagnosticsToggleVirtualText")<CR>', { noremap = true, silent = true })

-- Keybinding to toggle diagnostics (id)
-- vim.api.nvim_set_keymap('n', '<Leader>id', ':lua vim.cmd("DiagnosticsToggle")<CR>', { noremap = true, silent = true })
