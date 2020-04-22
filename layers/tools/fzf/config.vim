  " fzf.vim {
  let $LANG = 'en_US'
  " Customize fzf colors to match your color scheme
  let g:fzf_colors = g:spacevim#plug#fzf#colors
  let g:fzf_history_dir=g:spacevim#plug#fzf#fzf_history_dir
  nmap <Leader>? <plug>(fzf-maps-n)
  xmap <Leader>? <plug>(fzf-maps-x)
  omap <Leader>? <plug>(fzf-maps-o)

  nnoremap <Leader>bb :Buffers<CR>
  
  nnoremap <Leader>b? :Buffers<CR>
  nnoremap <Leader>w? :Windows<CR>
  nnoremap <Leader>f? :FZF<CR>
  nnoremap <Leader>ff :Files<CR>

  nnoremap <silent> <Leader>sf :call spacevim#plug#fzf#Session()<CR>
  nnoremap <silent> <leader>ct :FZFTags<cr>
  nnoremap <silent> <leader>bt :FZFBTags<cr>
  nnoremap <silent> <leader>ls :FZFBLines<cr>

  nnoremap <leader>rg :FZFRg <cr>

  nnoremap <leader>fh :History<cr>

  " }
  " coc-fzf
  if spacevim#load('coc')
    nnoremap <silent> <leader>fd  :<C-u>CocFzfList diagnostics<CR>
    nnoremap <silent> <leader>fb  :<C-u>CocFzfList diagnostics --current-buf<CR>
    nnoremap <silent> <leader>fc  :<C-u>CocFzfList commands<CR>
    nnoremap <silent> <leader>fo  :<C-u>CocFzfList outline<CR>
    nnoremap <silent> <leader>fy  :<C-u>CocFzfList symbols<CR>
    nnoremap <silent> <leader>fv  :<C-u>CocFzfList services<CR>
  endif