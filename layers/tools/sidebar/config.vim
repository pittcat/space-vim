let g:sidebars = {
  \ 'coc-explorer': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'coc-explorer'},
  \     'open': 'CocCommand explorer --no-toggle',
  \     'close': 'CocCommand explorer --toggle'
  \ },
  \ 'vista': {
  \     'position': 'left',
  \     'check_win': {nr -> bufname(winbufnr(nr)) =~ '__vista__'},
  \     'open': 'Vista',
  \     'close': 'Vista!'
  \ },
  \ 'undotree': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'undotree'},
  \     'open': 'MundoShow',
  \     'close': 'MundoHide'
  \ },
  \ 'defx': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'defx'},
  \     'open': 'Defx -direction=topleft -split=vertical',
  \     'close': 'Defx -toggle'
  \ }
  \ }

noremap <silent> <M-1> :call sidebar#toggle('defx')<CR>
noremap <silent> <M-2> :call sidebar#toggle('vista')<CR>
noremap <silent> <M-3> :call sidebar#toggle('undotree')<CR>
