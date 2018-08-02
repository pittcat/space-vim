function! spacevim#plug#vimtmuxrunner#Quickrun()
  VtrOpenRunner
  VtrClearRunner
  VtrSendFile
endfunction

function! spacevim#plug#vimtmuxrunner#OpenPane()
  let l:cmd = {
        \ 'python' : "ptpython ",
        \ 'ruby'   : "irb",
        \ 'javascript' : "noderepl",
        \ 'javascript.jsx' : "noderepl",
        \ 'java'  : 'java-repl',
        \ 'go'    : 'go'
        \}
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    let cmd[l:ft]=cmd[l:ft]
    VtrOpenRunner {'cmd': cmd[l:ft]}
    VtrClearRunner
  else
    call spacevim#util#err("spacevim#plug#vimux#VimuxOpenPane not supported in current filetype!")
  endif

endfunction
