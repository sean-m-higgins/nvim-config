-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- Quick save
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })

-- Clear search highlights
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

-- Move lines up/down in visual mode
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down", silent = true })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up", silent = true })
