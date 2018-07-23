if exists('b:did_spacevim_rs_ftplugin') || !spacevim#load('rust')
  finish
endif
let b:did_spacevim_rs_ftplugin = 1

if g:spacevim.timer
  call timer_start(300, 'spacevim#defer#rust')
endif
