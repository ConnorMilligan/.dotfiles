
-- tabs
vim.opt.tabstop = 4		-- 4 spaces in tab in visual
vim.opt.softtabstop = 4		-- 4 spaces in tab when editing
vim.opt.shiftwidth = 4		-- 4 spaces to a tab
vim.opt.expandtab = true 	-- expand tabs to spaces

-- UI config
vim.opt.number = true 		-- line numbers
vim.opt.relativenumber = true 	-- relative line numbers

-- mouse
vim.opt.mouse = ""		-- disable mouse

-- colors
vim.cmd.colorscheme 'github_dark_high_contrast'

-- rebinds
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

