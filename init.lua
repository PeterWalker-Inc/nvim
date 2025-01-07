vim.cmd("let mapleader = ' '")

require("preferences")
require("keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	ui = {
		border = "double",
	},
	install = {
		colorscheme = { "onedark_dark" },
	},
	spec = {
		{ import = "plugins" },
	},
})

require("ibl").setup({
	debounce = 100,
	indent = {
		char = "┊",
	},
	scope = {
		show_start = false,
		show_end = false,
	},
})

if vim.lsp.inlay_hint then
  vim.lsp.inlay_hint.enable(true, { 0 })
end

vim.cmd("colorscheme default")
-- vim.cmd([[
--    highlight Normal guibg=none
--    highlight NonText guibg=none
--    highlight Normal ctermbg=none
--    highlight NonText ctermbg=none
-- ]])
