let g:spacevim#map#localleader#desc = get(g:, 'g:spacevim#map#localleader#desc', {})

let g:spacevim#map#localleader#desc['f']={
  \ 'name'  : '+Fardo/ALEFix',
  \ 'd' : ['Farp','Far Input'],
  \ 'f' : ['ALEFix','ALE Format'],
  \}

let g:spacevim#map#localleader#desc['r']={
  \ 'name'  : '+Repl',
  \ 'o' : ['Repl','Open Repl'],
  \ 'a' : ['ReplAuto','Auto Repl'],
  \ 'k' : ['ReplStop','Kill Repl']
  \}


let g:spacevim#map#localleader#desc['l']={
  \ 'name'  : '+latex',
  \ 'n' : ['NeoTexOn','Live Compile'],
  \ 'f' : ['NeoTexOff','Live Compile Off'],
  \}
