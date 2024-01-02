
-- tabs
vim.opt.tabstop = 4		-- 4 spaces in tab in visual
vim.opt.softtabstop = 4		-- 4 spaces in tab when editing
vim.opt.shiftwidth = 4		-- 4 spaces to a tab
vim.opt.expandtab = true 	-- expand tabs to spaces

-- UI config
vim.opt.number = true 		-- line numbers
vim.opt.relativenumber = false 	-- relative line numbers
vim.opt.cursorline = true 	-- highlight the current line
vim.opt.cursorlineopt = 'number' 	-- apply the highlight to the line number only

-- Highlight command to make the line number bold on the current line
vim.api.nvim_exec([[
  highlight CursorLineNr cterm=bold
]], false)

-- mouse
vim.opt.mouse = ""		-- disable mouse

-- formatting
vim.api.nvim_exec([[
  function! NeoformatVisual() range
    '<,'>Neoformat
  endfunction
  vnoremap <silent> = :<C-u>call NeoformatVisual()<CR>
]], false)
