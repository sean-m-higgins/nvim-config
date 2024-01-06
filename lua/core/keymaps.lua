vim.opt.mouse = 'a'

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}  -- TODO what are these options?
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map the scroll wheel to up and down keys
map('', '<ScrollWheelUp>', '<Up>', {silent = false})
map('', '<ScrollWheelDown>', '<Down>', {silent = false})

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')   -- TODO am i using this?
