function! spacevim#plug#vimux#VimuxCompileRun()
  let l:cmd = {
        \ 'python' : "clear; python ",
        \}
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    let cmd[l:ft]=cmd[l:ft] . bufname("%")
    exec 'w'
    exec "call VimuxRunCommand(cmd[l:ft])"
  else
    call spacevim#util#err("spacevim#plug#vimux#VimuxCompileRun not supported in current filetype!")
  endif
endfunction

