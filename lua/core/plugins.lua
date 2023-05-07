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

local plugins = {
  'wbthomason/packer.nvim',
  --'ellisonleao/gruvbox.nvim',
  --'rebelot/kanagawa.nvim',
  --{
  --  'dracula/vim',
  --  lazy = false,
  --},

  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-treesitter/nvim-treesitter',
  -- 'bluz71/vim-nightfly-colors',
  'vim-test/vim-test',
  --'lewis6991/gitsigns.nvim',
  --'preservim/vimux',
  --'christoomey/vim-tmux-navigator',
  'tpope/vim-commentary',

  ---- debugging
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
  'simrat39/rust-tools.nvim',

  ---- completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  ----"github/copilot.vim",
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",
  "glepnir/lspsaga.nvim",
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },


  ---- my legacy plugins
  -- Moonlight Theme
  'shaunsingh/moonlight.nvim',
  -- Solarized Theme
  --'altercation/vim-colors-solarized',
  --'shaunsingh/solarized.nvim',

  -- A Vim plugin which shows a git diff in the sign column.
  'airblade/vim-gitgutter',
  -- Fugitive is the premier Vim plugin for Git.
  'tpope/vim-fugitive',

  -- Make the yanked region apparent!
  'machakann/vim-highlightedyank',
  -- Visually displaying indent levels in Vim.
  'yggdroot/indentline',
  -- Comment functions so powerful—no comment necessary.
  'scrooloose/nerdcommenter', --TODO test this??
  -- far-vim is a plugin for performing asynchronous search and replace operations on a set of files (typically within the same directory)
  'brooth/far.vim',

  -- Lean & mean status/tabline for vim that's light as air.
  --'vim-airline/vim-airline',
  'nvim-lualine/lualine.nvim',

  -- Cellular Automation plugin for fun
  'eandrju/cellular-automaton.nvim',


--  -- Use release branch (Recommend)
--  --use 'neoclide/coc.nvim'
--  -- Syntastic is a syntax checking plugin for Vim created by Martin Grenfell
--  --use 'scrooloose/syntastic'
--  -- Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
--  --use 'w0rp/ale'
--  -- Pydiction allows you to Tab-complete Python code in Vim such as keywords, built-ins, standard library, and third-party modules.
--  --use 'rkulla/pydiction'
--  -- Slim, fast and hackable completion framework for neovim; formerly known as nvim-completion-manager
--  --use 'ncm2/ncm2'
--  --use 'jayli/vim-easycomplete' -- interferes with pydiction
--  -- UltiSnips is the ultimate solution for snippets in Vim.
--  --use 'SirVer/ultisnips'
--  -- Snippets are separated from the engine. Add this if you want them:
--  --use 'honza/vim-snippets'
--  -- Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
--  --use 'tpope/vim-surround'
--  -- The NERDTree is a file system explorer for the Vim editor.
--  --use 'scrooloose/nerdtree'
--  --" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion, comprehension and refactoring engine for Vim.
--  -- TODO more work to do before using this
--  --use 'valloric/youcompleteme'
}

local opts = {}

require("lazy").setup(plugins, opts)
