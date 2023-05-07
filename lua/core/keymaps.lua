vim.opt.mouse = 'a'

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map the scroll wheel to up and down keys
map('', '<ScrollWheelUp>', '<Up>', {silent = false})
map('', '<ScrollWheelDown>', '<Down>', {silent = false})

-- <leader> = `\` key

 
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
