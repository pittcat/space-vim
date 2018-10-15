" lightline.vim {
  set showtabline=2

  let g:lightline = {
        \ 'colorscheme': 'jellybeans',
        \ 'tabline': {
        \   'left': [ ['bufferline'] ]
        \ },
        \ 'component_expand': {
        \   'bufferline': 'LightlineBufferline',
        \ },
        \ 'component_type': {
        \   'bufferline': 'tabsel',
        \ },
        \ }

  function! LightlineBufferline()
    call bufferline#refresh_status()
    return [ g:bufferline_status_info.before, g:bufferline_status_info.current, g:bufferline_status_info.after]
  endfunction

" }
"
" {bling/vim-bufferline
  let g:bufferline_active_buffer_left = '' 
  let g:bufferline_active_buffer_right = ''
  let g:bufferline_show_bufnr = 0
" }
