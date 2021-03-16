  " fzf.vim {
  let $LANG = 'en_US'
  " Customize fzf colors to match your color scheme
  let g:fzf_colors = g:spacevim#plug#fzf#colors
  let g:fzf_history_dir=g:spacevim#plug#fzf#fzf_history_dir
  nmap <Leader>? <plug>(fzf-maps-n)
  xmap <Leader>? <plug>(fzf-maps-x)
  omap <Leader>? <plug>(fzf-maps-o)

  nnoremap <localleader>jj :Buffers<CR>
  nnoremap <Leader>w? :Windows<CR>
  nnoremap <Leader>f? :Files<CR>
  nnoremap <Leader>ff :Files<CR>
  
  command! FZFSession call spacevim#plug#fzf#Session()
  nnoremap <silent> <Leader>fo :FZFSession<CR>
  nnoremap <silent> <leader>ft :Tags<cr>
  nnoremap <silent> <leader>fw :BTags<cr>
  nnoremap <silent> <leader>fl :BLines<cr>

  nnoremap <leader>fr :Rg <cr>

  nnoremap <leader>fh :History<cr>
  
  "words path /usr/share/dict/words
  imap <c-s> <plug>(fzf-complete-word)

  " }

let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
