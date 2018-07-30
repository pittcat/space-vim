scriptencoding utf-8

" vim-fugitive {
  nnoremap <silent> <Leader>gb :Gblame<CR>
  nnoremap <silent> <Leader>gd :Gdiff<CR>
  nnoremap <silent> <Leader>gs :Gstatus<CR>

  nnoremap <leader>ga :Git! add .<cr>:bd!<cr>
  nnoremap <silent> <Leader>gw :Gwrite<cr>
  nnoremap <silent> <Leader>gc :Gcommit<CR>
  nnoremap <Leader>gp :AsyncRun -cwd=$VIM_ROOT git push<cr>

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

  highlight SignifyLineDelete cterm=bold ctermbg=NONE ctermfg=red
  highlight SignifyLineChange cterm=bold ctermbg=NONE ctermfg=yellow
  highlight SignifySignAdd    cterm=bold ctermbg=NONE ctermfg=green
  highlight SignifySignDelete cterm=bold ctermbg=NONE ctermfg=red
  highlight SignifySignChange cterm=bold ctermbg=NONE ctermfg=yellow

  nnoremap <silent> <Leader>gg :SignifyToggle<CR>
  nnoremap <silent> <leader>gr :SignifyRefresh<CR>
  nnoremap <leader>gh :SignifyToggleHighlight<CR>
  "}

" {Agit.vim
  noremap <silent> <leader>gv :Agit<cr>
" }
