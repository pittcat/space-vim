if exists('b:did_spacevim_js_ftplugin') || !spacevim#load('javascript')
  finish
endif
let b:did_spacevim_js_ftplugin = 1

setlocal tabstop=2 softtabstop=2 shiftwidth=2

if g:spacevim.timer
  call timer_start(550,'spacevim#defer#javascript')
endif
