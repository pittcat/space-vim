if exists('b:did_spacevim_yaml_ftplugin') || !spacevim#load('yaml')
  finish
endif
let b:did_spacevim_yaml_ftplugin = 1

setlocal ts=2 sts=2 sw=2 expandtab

if g:spacevim.timer
  call timer_start(550,'spacevim#defer#yaml')
endif
