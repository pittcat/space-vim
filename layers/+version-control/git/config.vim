scriptencoding utf-8

" vim-fugitive {
  function! GitAdd()
    if @%=='Startify' || @%==''
      echo 'No Git Add'
    else
      execute 'Git! add .' 
    endif
  endfunction

  " nnoremap <silent> <Leader>ge :Gedit<CR>
  " nnoremap <silent> <Leader>gr :Gread<CR>
  " nnoremap <silent> <Leader>gl :Glog<CR>
  " Mnemonic _i_nteractive
  "}
  
  "{vim-signify
  let g:signify_vcs_list              = [ 'git', 'hg' ]
  let g:signify_cursorhold_insert     = 1
  let g:signify_cursorhold_normal     = 1
  let g:signify_update_on_bufenter    = 0
  let g:signify_update_on_focusgained = 1
  let g:signify_cursorhold_normal = 0
  let g:signify_cursorhold_insert = 0

  highlight SignifyLineDelete cterm=bold ctermbg=NONE ctermfg=red
  highlight SignifyLineChange cterm=bold ctermbg=NONE ctermfg=yellow
  highlight SignifySignAdd    cterm=bold ctermbg=NONE ctermfg=green
  highlight SignifySignDelete cterm=bold ctermbg=NONE ctermfg=red
  highlight SignifySignChange cterm=bold ctermbg=NONE ctermfg=yellow

  "}

" {Agit.vim
" }
"
