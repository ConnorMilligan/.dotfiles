-- Boostrap the lazy module
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  {
    "neovim/nvim-lspconfig",
    
    dependencies = {
      -- Auto LSP installation
      { "williamboman/mason.nvim", config=true },
      "williamboman/mason-lspconfig.nvim",

      -- Status notifications
      { "j-hui/fidget.nvim", opts = {} },

      "folke/neodev.nvim",
    },
  },

  -- Color Theme
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "github_dark_high_contrast"
    end,
  },

  --{
    --"RRethy/base16-nvim",
    --priority = 1000,
    --config = function()
        --vim.cmd.set("termguicolors")
        --vim.cmd.colorscheme("base16-isotope")
    --end,
  --},

  {
    -- Autocompletion
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      -- Adds LSP completion capabilities
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",

      -- Adds a number of user-friendly snippets
      "rafamadriz/friendly-snippets",
    },
  },

  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim", opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = "make",
        cond = function()
          return vim.fn.executable "make" == 1
        end,
      },
    },
  },

  {
    "windwp/nvim-autopairs",
    -- Optional dependency
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require("nvim-autopairs").setup {}
      -- If you want to automatically add `(` after selecting a function or method
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
  },
 
  -- Cheatcode
  { "github/copilot.vim" },

  -- Formatter
  { "sbdchd/neoformat" },

  -- Cmake
  { 
    "Civitasv/cmake-tools.nvim",
  },
  
  -- Zig
  { "ziglang/zig.vim" },
   
})
