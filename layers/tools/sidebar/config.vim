let g:sidebars = {
  \ 'filemanager': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'rnvimr'},
  \     'open': 'RnvimrToggle',
  \     'close': 'RnvimrToggle'
  \ },
  \ 'undotree': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'undotree'},
  \     'open': 'UndotreeShow',
  \     'close': 'UndotreeHide'
  \ },
  \ }

noremap <silent> <M-1> :call sidebar#toggle('filemanager')<CR>
noremap <silent> <M-2> :call sidebar#toggle('undotree')<CR>
