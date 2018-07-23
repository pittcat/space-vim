if exists('b:did_spacevim_go_ftplugin') || !spacevim#load('ruby')
  finish
endif
let b:did_spacevim_ruby_ftplugin = 1

setlocal expandtab shiftwidth=2 tabstop=2

if g:spacevim.timer
  call timer_start(550,'spacevim#defer#ruby')
endif
