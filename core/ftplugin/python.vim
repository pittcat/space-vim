if exists('b:did_spacevim_py_ftplugin') || !spacevim#load('python')
  finish
endif
let b:did_spacevim_py_ftplugin = 1

setlocal foldmethod=indent tabstop=4

if g:spacevim.timer
  call timer_start(300, 'spacevim#defer#python')
endif

