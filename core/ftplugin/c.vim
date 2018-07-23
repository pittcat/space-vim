if exists('b:did_spacevim_c_ftplugin') || !spacevim#load('c-c++')
  finish
endif
let b:did_spacevim_c_ftplugin = 1

setlocal cindent tabstop=2 shiftwidth=2 softtabstop=2


if g:spacevim.timer
  call timer_start(550,'spacevim#defer#clang')
endif
