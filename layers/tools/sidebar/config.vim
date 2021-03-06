let g:sidebars = {
  \ 'coc-explorer': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'coc-explorer'},
  \     'open': 'CocCommand explorer --no-toggle',
  \     'close': 'CocCommand explorer --toggle'
  \ },
  \ 'undotree': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'undotree'},
  \     'open': 'UndotreeShow',
  \     'close': 'UndotreeHide'
  \ },
  \ }

noremap <silent> <M-1> :call sidebar#toggle('coc-explorer')<CR>
noremap <silent> <M-2> :call sidebar#toggle('undotree')<CR>
