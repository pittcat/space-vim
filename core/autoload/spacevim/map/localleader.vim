let g:spacevim#map#localleader#desc = get(g:, 'g:spacevim#map#localleader#desc', {})

let g:spacevim#map#localleader#desc['f']={
  \ 'name'  : '+Fardo',
  \ 'd' : ['Farp','Far Input'],
  \}

let g:spacevim#map#localleader#desc['r']={
  \ 'name'  : '+Repl',
  \ 'o' : ['IronRepl','Open Repl'],
  \ 'r' : ['IronRestart','Restart Repl'],
  \ 'i' : ['<plug>(iron-interrupt)','Interrupt Repl'],
  \ 'q' : ['<Plug>(iron-exit)','Exit Repl'],
  \ 'c' : ['<Plug>(iron-clear)','Clear Repl']
  \}
