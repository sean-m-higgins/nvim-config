require('gitsigns').setup {
  signs = {
    add          = { text = '+' },
    change       = { text = '+' },
    delete       = { text = '--' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  current_line_blame = false,
  current_line_blame_opts = {
    delay = 1000,
    virt_text_pos = 'eol',
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
}
