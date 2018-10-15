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

  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle

" }
"
" {bling/vim-bufferline
  let g:bufferline_active_buffer_left = '' 
  let g:bufferline_active_buffer_right = ''
  let g:bufferline_show_bufnr = 0
  let g:bufferline_echo = 0
" }
"
