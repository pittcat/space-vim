  " fzf.vim {
  let $LANG = 'en_US'
  " Customize fzf colors to match your color scheme
  let g:fzf_colors = g:spacevim#plug#fzf#colors
  let g:fzf_history_dir=g:spacevim#plug#fzf#fzf_history_dir
  nmap <Leader>? <plug>(fzf-maps-n)
  xmap <Leader>? <plug>(fzf-maps-x)
  omap <Leader>? <plug>(fzf-maps-o)

  nnoremap <Leader>bb :FzfPreviewAllBuffers<CR>
  
  nnoremap <Leader>b? :FzfPreviewAllBuffers<CR>
  nnoremap <Leader>w? :Windows<CR>
  nnoremap <Leader>f? :FZF<CR>
  nnoremap <Leader>ff :FzfPreviewDirectoryFiles<CR>
  nnoremap <Leader>pf :FzfPreviewProjectFiles<CR><CR>

  nnoremap <silent> <Leader>sf :call spacevim#plug#fzf#Session()<CR>
  nnoremap <silent> <leader>ct :FzfPreviewBufferTags<cr>
  nnoremap <silent> <leader>ls :Lines<cr>

  nnoremap <leader>rg :FPRG<cr>
  nnoremap <localleader>rg :FzfPreviewProjectGrep 

  nnoremap <leader>fh :History:<cr>

  " }

