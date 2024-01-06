--Adds yanked value to clipboard
vim.opt.clipboard = 'unnamed'

vim.g.mapleader = ' '  -- TODO should these be set in  keymaps? if used?
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'  -- TODO what is this?
vim.opt.showcmd = true
vim.opt.laststatus = 2  -- TODO what is this?
vim.opt.autowrite = true  -- TODO what is this?
--vim.opt.cursorline = true  -- TODO using something different right?
vim.opt.autoread = true  -- TODO what is this?

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

--vim.cmd [[ set noswapfile ]]  -- TODO what is this?

--Line numbers always on
vim.wo.number = true

-- allows for extended color support in the terminal
vim.o.termguicolors = true
