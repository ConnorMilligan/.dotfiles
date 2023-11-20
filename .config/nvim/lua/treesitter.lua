-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
    ensure_installed = { "c", "lua", "vim" },

    auto_install = true,

    highlight = {
        enable = true
    },
})
