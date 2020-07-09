if exists('b:did_spacevim_md_ftplugin') || !spacevim#load('markdown')
  finish
endif
let b:did_spacevim_md_ftplugin = 1

setlocal wrap

nnoremap <buffer> <LocalLeader>1 m`yypVr=``
nnoremap <buffer> <LocalLeader>2 m`yypVr-``
nnoremap <buffer> <LocalLeader>3 m`^i### <esc>``4l
nnoremap <buffer> <LocalLeader>4 m`^i#### <esc>``5l
nnoremap <buffer> <LocalLeader>5 m`^i##### <esc>``6l



