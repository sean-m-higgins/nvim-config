-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt

opt.scrolloff = 8 -- Keep 8 lines above/below cursor
opt.wrap = false -- Disable line wrapping
opt.confirm = true -- Confirm before quitting with unsaved changes
opt.cursorline = true -- Highlight the current line
opt.undofile = true -- Persistent undo across sessions
