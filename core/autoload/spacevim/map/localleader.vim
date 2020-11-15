let g:spacevim#map#localleader#desc = get(g:, 'g:spacevim#map#localleader#desc', {})

let g:spacevim#map#localleader#desc['f']={
  \ 'name'  : '+Fardo',
  \ 'd' : ['Farp','Far Input'],
  \}

let g:spacevim#map#localleader#desc['r']={
  \ 'name'  : '+Repl',
  \ 'o' : ['Tnew','Open Repl'],
  \ 'l' : ['Tclear!','Repl Clear'],
  \ 't' : ['Ttoggle','Repl Ttoggle'],
  \}


let g:spacevim#map#localleader#desc['j']={
  \ 'name'  : '+buffer',
  \}
