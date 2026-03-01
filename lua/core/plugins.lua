local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  --[[========== Theme ==========]]
  "shaunsingh/moonlight.nvim",

  --[[========== Utilities ==========]]
  "nvim-treesitter/nvim-treesitter",
  "brooth/far.vim",
  "nvim-tree/nvim-tree.lua",
  "tpope/vim-commentary",
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  --[[========== Completion ==========]]
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
  },
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",
  "L3MON4D3/LuaSnip",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },

  --[[========== Visuals ==========]]
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  "yggdroot/indentline",
  "machakann/vim-highlightedyank",

  --[[========== Git ==========]]
  "tpope/vim-fugitive",
  "lewis6991/gitsigns.nvim",
}

require("lazy").setup(plugins, {})
