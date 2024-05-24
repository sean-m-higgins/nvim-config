local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

local plugins = {
  --[[========== Theme ==========]]
  "shaunsingh/moonlight.nvim",
  --"rebelot/kanagawa.nvim",
  --"ellisonleao/gruvbox.nvim",
  --{
  --  "dracula/vim",
  --  lazy = false,
  --},
  --{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  --"altercation/vim-colors-solarized",
  --"shaunsingh/solarized.nvim",  -- Solarized Theme


  --[[========== Utilities ==========]]
  "nvim-treesitter/nvim-treesitter",  -- parser generator tool, concrete syntax tree, highlighting
  "brooth/far.vim",  -- asynchronous search and replace operations on a set of files (typically within the same directory)
  "nvim-tree/nvim-tree.lua",  -- file explorer
  "tpope/vim-commentary",  -- comment stuff out
  --"scrooloose/nerdcommenter",  -- Comment functions so powerful—no comment necessary.
  {
    "nvim-telescope/telescope.nvim",  -- highly extendable fuzzy finder over lists
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" }
  },


  --[[========== Completion ==========]]
  --"github/copilot.vim",
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x"
  },
  "neovim/nvim-lspconfig",  -- Quickstart configs for Nvim LSP
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",  -- A completion plugin for neovim coded in Lua
  "L3MON4D3/LuaSnip",  -- snippet Engine for Neovim
  "williamboman/mason.nvim",  -- Portable package manager for Neovim, LSP
  "williamboman/mason-lspconfig.nvim",  -- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
  {
    "nvimdev/lspsaga.nvim",  -- improve neovim lsp experience, https://nvimdev.github.io/lspsaga/
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
  -- {
  --   "scalameta/nvim-metals",
  --   dependencies = { {"nvim-lua/plenary.nvim"} }
  -- },
  --"saadparwaiz1/cmp_luasnip",  -- luasnip completion source for nvim-cmp
  --"rafamadriz/friendly-snippets",  -- Set of preconfigured snippets for different language

  --[[========== Visuals ==========]]
  {
    "nvim-lualine/lualine.nvim",  -- status line in Lua
    dependencies = { "nvim-tree/nvim-web-devicons" }  -- icons/logos support
  },
  --"vim-airline/vim-airline",  -- Lean & mean status/tabline for vim that"s light as air.
  "yggdroot/indentline",  -- Visually displaying indent levels in Vim.
  "machakann/vim-highlightedyank",  -- Make the yanked region apparent!


  --[[========== Git ==========]]
  "tpope/vim-fugitive",  -- the premier Vim plugin for Git.
  "lewis6991/gitsigns.nvim",  -- git decorations
  --"airblade/vim-gitgutter",  -- shows a git diff in the sign column.


  --[[========== Future? ==========]]
  --"vim-test/vim-test",  -- wrapper for running tests on different granularities.
  --"wbthomason/packer.nvim",  -- use-package inspired plugin manager
  --"preservim/vimux",  -- tmux
  --"christoomey/vim-tmux-navigator",  -- tmux

  ---- debugging
  --"mfussenegger/nvim-dap",
  --"rcarriga/nvim-dap-ui",
  --"simrat39/rust-tools.nvim",

  ---- fun
  --"eandrju/cellular-automaton.nvim",  -- Cellular Automation plugin for fun

  -- Use release branch (Recommend)
  --use "neoclide/coc.nvim"
  -- Syntastic is a syntax checking plugin for Vim created by Martin Grenfell
  --use "scrooloose/syntastic"
  -- Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
  --use "w0rp/ale"
  -- Pydiction allows you to Tab-complete Python code in Vim such as keywords, built-ins, standard library, and third-party modules.
  --use "rkulla/pydiction"
  -- Slim, fast and hackable completion framework for neovim; formerly known as nvim-completion-manager
  --use "ncm2/ncm2"
  --use "jayli/vim-easycomplete" -- interferes with pydiction
  -- UltiSnips is the ultimate solution for snippets in Vim.
  --use "SirVer/ultisnips"
  -- Snippets are separated from the engine. Add this if you want them:
  --use "honza/vim-snippets"
  -- Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
  --use "tpope/vim-surround"
  -- The NERDTree is a file system explorer for the Vim editor.
  --use "scrooloose/nerdtree"
  --" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion, comprehension and refactoring engine for Vim.
  -- TODO more work to do before using this
  --use "valloric/youcompleteme"
}

local opts = {}

require("lazy").setup(plugins, opts)
