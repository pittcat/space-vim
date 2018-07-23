if exists('b:did_spacevim_go_ftplugin') || !spacevim#load('typescript')
  finish
endif
let b:did_spacevim_typescript_ftplugin = 1

setlocal autoindent
setlocal cindent
setlocal smartindent
setlocal indentexpr&

if g:spacevim.timer
  call timer_start(550,'spacevim#defer#typescript')
endif
