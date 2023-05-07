--map mouse scroll to move cursor up and down
vim.keymap.set('n', '<ScrollWheelUp>', '<Up>')
vim.keymap.set('n', '<ScrollWheelDown>', '<Down>')

--Adds yanked value to clipboard
vim.opt.clipboard = 'unnamed'

-- 1 tab == 2 spaces
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
