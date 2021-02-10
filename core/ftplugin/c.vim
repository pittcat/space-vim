if exists('b:did_spacevim_c_ftplugin') || !spacevim#load('cfamily')
  finish
endif
let b:did_spacevim_c_ftplugin = 1

setlocal cindent tabstop=2 shiftwidth=2 softtabstop=2
