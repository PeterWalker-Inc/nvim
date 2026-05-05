local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight yanked text
local highlight_group = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({ timeout = 170 })
    end,
    group = highlight_group,
})

-- vim.api.nvim_create_autocmd("VimLeave", {
--   command = "set guicursor=a:ver25" -- Resets to a vertical beam
-- })

local function update_statusline_color()
  local mode = vim.api.nvim_get_mode().mode
  if mode == 'i' then
    vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#000000', bg = '#447BE9' }) -- Magenta for Insert
  elseif mode == 'v' then
    vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#000000', bg = '#E97DB6'}) -- red for replace mode
  elseif mode == 'n' then
    vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#000000', bg = '#3BC9C8' }) -- Green for Normal
  end
end

vim.api.nvim_create_autocmd("ModeChanged", { callback = update_statusline_color })

