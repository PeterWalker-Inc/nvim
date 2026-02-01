vim.cmd("set noexpandtab")
vim.cmd("set number")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
-- vim.cmd("set cursorline")
vim.cmd("set laststatus=2")
vim.cmd("set noshowmode")
vim.cmd("set linebreak")
vim.cmd("set showbreak=↪\\ ")
vim.api.nvim_set_hl(0, 'Comment', { italic=true })

-- if vim.lsp.inlay_hint then
--   vim.lsp.inlay_hint.enable(true, { 0 })
-- end
