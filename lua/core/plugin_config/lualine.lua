require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
        shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
      }
    }
  }
}
