--GitGutter config
--set updatetime=100
--function! GitStatus()
--  let [a,m,r] = GitGutterGetHunkSummary()
--  return printf('+%d ~%d -%d', a, m, r)
--endfunction
--set statusline+=%{GitStatus()}
--let g:gitgutter_set_sign_backgrounds = 1
--highlight clear SignColumn
--let g:gitgutter_sign_added = '++'
--let g:gitgutter_sign_modified = '-+'
--let g:gitgutter_sign_removed = '--'

--local o = vim.o
--
--let [a,m,r] = GitGutterGetHunkSummary()
--local aa = a .. " " .. m .. " " .. r
--vim.o.statusline = "%f" .. aa .."%= %l,%c %= %p%%"
--
--vim.g.gitgutter_sign_added = '++'

--require('vim-gitgutter').set()
