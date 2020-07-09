if exists('b:did_spacevim_py_ftplugin') || !spacevim#load('python')
  finish
endif
let b:did_spacevim_py_ftplugin = 1

setlocal foldmethod=indent tabstop=4 textwidth=79
