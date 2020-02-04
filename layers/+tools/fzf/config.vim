  " fzf.vim {
  let $LANG = 'en_US'
  " Customize fzf colors to match your color scheme
  let g:fzf_colors = g:spacevim#plug#fzf#colors
  nmap <Leader>? <plug>(fzf-maps-n)
  xmap <Leader>? <plug>(fzf-maps-x)
  omap <Leader>? <plug>(fzf-maps-o)

  nnoremap <Leader>bb :Buffers<CR>
  
  nnoremap <Leader>pf :call spacevim#plug#fzf#FindFileInProject()<cr>
  nnoremap <Leader>b? :Buffers<CR>
  nnoremap <Leader>w? :Windows<CR>
  nnoremap <Leader>f? :Files<CR>

  nnoremap <silent> <Leader>sf :call spacevim#plug#fzf#Session()<CR>
  nnoremap <Leader>fep :Files ~/MEGA/code/dotfiles<CR>
  nnoremap <Leader>fes :Files ~/MEGA/code/dotfiles/space-vim/UltiSnips<CR>
  nnoremap <Leader>fec :Files ~/.space-vim/layers/+completion/autocomplete<CR>
  nnoremap <silent> <leader>ct :Tags<cr>
  nnoremap <silent> <leader>ls :Lines<cr>

  nnoremap <localleader>ag :Ag!<CR>
  vnoremap <leader>ag :<c-u>call spacevim#plug#fzf#ag_vsearch()<cr>

  nnoremap <leader>rg :PCRg!<cr>
  nnoremap <localleader>rg :Rg!<cr>
  vnoremap <leader>rg :<c-u>call spacevim#plug#fzf#RgVisual()<cr>

  if g:spacevim.nvim
    autocmd! FileType fzf tnoremap  <Esc> <Esc>
  endif

  if exists('*nvim_open_win')
    let $FZF_DEFAULT_OPTS = '--layout=reverse'
    let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
  endif
  " }
