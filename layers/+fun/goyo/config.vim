" goyo.vim {
  nnoremap <Leader>gy :Goyo<CR>
" }

  "{Limelight and goyo
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
  let g:limelight_conceal_ctermfg='gray'
  let g:limelight_conceal_ctermfg=240
  let g:limelight_default_coefficient=0.7
  "
  "}
  "{ Goyo for markdown
  " function! s:auto_goyo()
    " if &ft == 'markdown'
      " Goyo 80
    " else
      " let bufnr = bufnr('%')
      " Goyo!
      " execute 'b '.bufnr
    " endif
  " endfunction

  " augroup goyo_markdown
    " autocmd!
    " autocmd BufNewFile,BufRead * call s:auto_goyo()
  " augroup END
  "}
