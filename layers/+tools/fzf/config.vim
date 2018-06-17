  " fzf.vim {
  let $LANG = 'en_US'
  " Customize fzf colors to match your color scheme
  let g:fzf_colors = g:spacevim#plug#fzf#colors
  nmap <Leader>? <plug>(fzf-maps-n)
  xmap <Leader>? <plug>(fzf-maps-x)
  omap <Leader>? <plug>(fzf-maps-o)

  nnoremap <Leader>bb :Buffers<CR>

  nnoremap <Leader>b? :Buffers<CR>
  nnoremap <Leader>w? :Windows<CR>
  nnoremap <Leader>f? :Files<CR>

  nnoremap <silent> <Leader>sf :call spacevim#plug#fzf#Session()<CR>
  nnoremap <Leader>f? :Files ~<CR>
  nnoremap <Leader>ff :Files $PWD/<CR>
  nnoremap <Leader>fep :Files ~/MEGA/code/dotfiles<CR>
  nnoremap <silent> <leader>ct :Tags<cr>
  nnoremap <silent> <leader>fb :BTags<cr>
  nnoremap <silent> <leader>ls :Lines<cr>
  nnoremap <silent> <leader>fl :BLines<cr>

  nnoremap <leader>ag :PCAg<CR>
  nnoremap <localleader>ag :Ag!<CR>
  vnoremap <leader>ag :<c-u>call spacevim#plug#fzf#ag_vsearch()<cr>

  nnoremap <leader>rg :PCRg!<cr>
  nnoremap <localleader>rg :Rg!<cr>
  " }
