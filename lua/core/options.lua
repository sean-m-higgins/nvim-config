vim.opt.clipboard = 'unnamed'  -- Adds yanked value to clipboard
vim.opt.tabstop = 2  -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 2  -- Number of spaces to use for each step of (auto)indent
vim.opt.shiftround = true  -- Round indent to multiple of 'shiftwidth'
vim.opt.expandtab = true  -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>
vim.wo.number = true  -- Line numbers always on
vim.o.termguicolors = true  -- Allows for extended color support in the terminal

--vim.cmd 'set noswapfile'  -- use if you don't want to write sensitive info to disk before saving
