" Only suitable for space-vim-dark theme, other themes are not guaranteed.
let g:spacevim#plug#fzf#colors = {
\   'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


let g:spacevim#plug#fzf#fzf_history_dir = '~/.local/share/fzf-history'

function! spacevim#plug#fzf#Session()
  call fzf#run({
  \ 'source':  'ls -1 ~/.vim/session',
  \ 'sink':    'SLoad',
  \ 'options': '+m --prompt="Sessions> "',
  \ 'window': { 'width': 0.9, 'height': 0.7 }
  \})
endfunction

if g:spacevim.nvim
  autocmd! FileType fzf tnoremap  <Esc> <Esc>
endif

if exists('*nvim_open_win')
  let $FZF_DEFAULT_OPTS = '--layout=reverse'
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }
endif
