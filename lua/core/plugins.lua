local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  --use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
	      'nvim-telescope/telescope.nvim',
	      tag = '0.1.0',
	      requires = { { 'nvim-lua/plenary.nvim' } }
      }
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'


  -- A Vim plugin which shows a git diff in the sign column.
  use 'airblade/vim-gitgutter'
  -- Make the yanked region apparent!
  use 'machakann/vim-highlightedyank'
  --
  use 'yggdroot/indentline'
  -- Visually displaying indent levels in Vim.
  use 'nathanaelkane/vim-indent-guides'
  -- Lean & mean status/tabline for vim that's light as air.
  use 'vim-airline/vim-airline'
  -- Solarized Theme
  use 'altercation/vim-colors-solarized'
  -- Use release branch (Recommend)
  --use 'neoclide/coc.nvim'
  -- Syntastic is a syntax checking plugin for Vim created by Martin Grenfell
  --use 'scrooloose/syntastic'
  -- Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
  --use 'w0rp/ale'
  -- Cellular Automation plugin for fun
  --use 'eandrju/cellular-automaton.nvim'
  -- Pydiction allows you to Tab-complete Python code in Vim such as keywords, built-ins, standard library, and third-party modules.
  --use 'rkulla/pydiction'
  -- Slim, fast and hackable completion framework for neovim; formerly known as nvim-completion-manager
  --use 'ncm2/ncm2'
  --use 'jayli/vim-easycomplete' -- interferes with pydiction
  -- UltiSnips is the ultimate solution for snippets in Vim.
  --use 'SirVer/ultisnips'
  -- Snippets are separated from the engine. Add this if you want them:
  --use 'honza/vim-snippets'
  -- Fugitive is the premier Vim plugin for Git.
  --use 'tpope/vim-fugitive'
  -- Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
  --use 'tpope/vim-surround'
  -- The NERDTree is a file system explorer for the Vim editor.
  --use 'scrooloose/nerdtree'
  -- Comment functions so powerful—no comment necessary.
  --use 'scrooloose/nerdcommenter'
  --" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion, comprehension and refactoring engine for Vim.
  -- TODO more work to do before using this
  --use 'valloric/youcompleteme'
  -- far-vim is a plugin for performing asynchronous search and replace operations on a set of files (typically within the same directory)
  --use 'brooth/far.vim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)



