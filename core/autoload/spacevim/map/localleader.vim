let g:spacevim#map#localleader#desc = get(g:, 'g:spacevim#map#localleader#desc', {})

" editing layer
let g:spacevim#map#localleader#desc['f']={
  \ 'name'  : '+Fardo',
  \ 'd' : ['Farp','Far Input'],
  \}


" repl layer
let g:spacevim#map#localleader#desc['r']={
  \ 'name'  : '+Repl',
  \ 'o' : ['Tnew','Open Repl'],
  \ 'l' : ['Tclear!','Repl Clear'],
  \ 't' : ['Ttoggle','Repl Ttoggle'],
  \}

" fzf self layer
let g:spacevim#map#localleader#desc['j']={
  \ 'name'  : '+buffer',
  \}


" coc layer
let g:spacevim#map#localleader#desc['c']={
  \ 'name'  : '+Coc/Codef/Surround',
  \ 'g':["CocAction('jumpDefinition', 'drop')","CocDDefine"],
  \ 'v':["CocAction('jumpDefinition', 'vsplit')",'CocVDefine'],
  \ 'n':['<Plug>(coc-rename)','CocRename'],
  \ 'f':["CoCRenameFile","CocRenameF"],
  \ 'e':["CoCExplore","CocFiles"],
  \}
