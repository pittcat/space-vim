let g:reply_repls = {
\   'python': ['ptpython'],
\   'ruby': ['irb'],
\ }

vnoremap <silent> <C-c><C-l> :ReplSend<cr>
