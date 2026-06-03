-- [[ General editor options ]]

-- Colors and UI
-- vim.opt.termguicolors = true
-- vim.opt.background = 'dark'
-- vim.cmd.colorscheme('firefly_traditional')

-- Tab / indent
vim.opt.tabstop = 4            -- 4 spaces in tab in visual
vim.opt.softtabstop = 4        -- 4 spaces in tab when editing
vim.opt.shiftwidth = 4         -- 4 spaces to a tab
vim.opt.expandtab = true       -- expand tabs to spaces

-- UI
vim.opt.number = true          -- line numbers
vim.opt.relativenumber = false -- relative line numbers
vim.opt.cursorline = true      -- highlight the current line
vim.opt.cursorlineopt = 'number' -- apply the highlight to the line number only

-- Mouse
vim.opt.mouse = ''             -- disable mouse

-- Formatting keymap
vim.keymap.set('v', '=', '<cmd>Neoformat<CR>', { silent = true })
