scriptencoding utf-8

" vim-fugitive {
  nnoremap <silent> <Leader>gb :Gblame<CR>
  nnoremap <silent> <Leader>gd :Gdiff<CR>
  nnoremap <silent> <Leader>gs :Gstatus<CR>

  nnoremap <leader>ga :Git! add .<cr>:bd!<cr>
  nnoremap <silent> <Leader>gw :Gwrite<cr>
  nnoremap <silent> <Leader>gc :Gcommit<CR>
  nnoremap <silent> <Leader>gp :Gpush<cr>

  " nnoremap <silent> <Leader>ge :Gedit<CR>
  " nnoremap <silent> <Leader>gr :Gread<CR>
  " nnoremap <silent> <Leader>gl :Glog<CR>
  " Mnemonic _i_nteractive
  "}
  
  "{vim-signify

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
