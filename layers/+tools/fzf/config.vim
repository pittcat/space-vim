  " fzf.vim {
  let $LANG = 'en_US'
  " Customize fzf colors to match your color scheme
  let g:fzf_colors = g:spacevim#plug#fzf#colors
  nmap <Leader>? <plug>(fzf-maps-n)
  xmap <Leader>? <plug>(fzf-maps-x)
  omap <Leader>? <plug>(fzf-maps-o)

  nnoremap <Leader>bb :FzfPreviewBuffers<CR>
  
  nnoremap <Leader>b? :FzfPreviewBuffers<CR>
  nnoremap <Leader>w? :Windows<CR>
  nnoremap <Leader>ff :FzfPreviewDirectoryFiles<CR>
  nnoremap <Leader>pf :FzfPreviewProjectFiles<CR>
  nnoremap <Leader>fr :FzfPreviewProjectFiles<CR>

  nnoremap <silent> <Leader>sf :call spacevim#plug#fzf#Session()<CR>
  nnoremap <silent> <leader>ct :FzfPreviewBufferTags<cr>
  nnoremap <silent> <leader>ls :Lines<cr>

  nnoremap <leader>rg :exec 'FzfPreviewProjectGrep ' . expand("<cword>")<cr>
  nnoremap <localleader>rg :Rg!<cr>
  vnoremap <leader>rg :<c-u>call spacevim#plug#fzf#RgVisual()<cr>

  if g:spacevim.nvim
    autocmd! FileType fzf tnoremap  <Esc> <Esc>
  endif

  if exists('*nvim_open_win')
    let $FZF_DEFAULT_OPTS = '--layout=reverse'
    let g:fzf_layout = {'window':'call fzf_preview#window#create_centered_floating_window()'}
  endif
  " }
