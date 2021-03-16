let g:asyncrun_shell = '/usr/bin/zsh'
let g:asyncrun_shellflag = '-c'
let $PYTHONUNBUFFERED=1


" all function rely on term layer(vim-floaterm)

function! spacevim#plug#asyncrun#CompileAndRun()
  let l:cmd = {
        \ 'c'      : "gcc '%:p' -o '%:p:h/exec/%:t:r';%:p:h/exec/%:t:r",
        \ 'cpp'    : "g++ -std=c++11 '%:p' -o '%:p:h/exec/%:t:r';%:p:h/exec/%:t:r",
        \ 'sh'     : "bash %",
        \ 'go'     : "go run %",
        \ 'ruby'   : "ruby %",
        \ 'rust'   : "rustc '%:p' -o  './exec/%:t:r';%:p:h/exec/%:t:r",
        \ 'python' : "python %",
        \ 'lua' : "lua %",
        \ 'haskell': "ghc %:p -o %< && %:p:h/%:t:r<",
        \ 'javascript': "node %<",
        \ 'java'   : "javac %;cd %:p:h;java %:t:r;rm %:t:r.'class'",
        \ 'tex'    : "evince %:p:h/%:t:r.pdf"
        \}
  " javac -d classes MyProgram.java
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    exec 'w'
    exec "AsyncRun -mode=term -pos=floaterm_reuse -position=right -width=0.5 ".l:cmd[l:ft]
  else
    call spacevim#util#err("spacevim#util#CompileAndRun not supported in current filetype!")
  endif
endfunction



function! spacevim#plug#asyncrun#Compile()
  let l:cmd = {
        \ 'c'      : "gcc '%:p' -o '%:p:h/exec/%:t:r';",
        \ 'cpp'    : "g++ -std=c++11 '%:p' -o '%:p:h/exec/%:t:r';",
        \}
  " javac -d classes MyProgram.java
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    exec 'w'
    exec "AsyncRun -mode=term -pos=floaterm_reuse -position=right -width=0.5 ".l:cmd[l:ft]
  else
    call spacevim#util#err("spacevim#util#Compile not supported in current filetype!")
  endif
endfunction

function! spacevim#plug#asyncrun#Gdb()
  let l:cmd = {
        \ 'c'      : "gcc -g '%:p' -o  '%:p:h/exec/%:t:r';",
        \ 'cpp'    : "g++ -g -std=c++11 '%:p' -o '%:p:h/exec/%:t:r';",
        \}
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    exec 'w'
    exec "AsyncRun -mode=term -pos=floaterm_reuse -position=right -width=0.5 ".l:cmd[l:ft]
  else
    call spacevim#util#err("spacevim#util#Gdb not supported in current filetype!")
  endif
endfunction


function! spacevim#plug#asyncrun#Vsdebug()
  let l:cmd = {
        \ 'c'      : "gcc -g '%:p' -o  '%:p:h/exec/vsdebug';",
        \ 'cpp'    : "g++ -g -std=c++11 '%:p' -o '%:p:h/exec/vsdebug';",
        \}
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    exec 'w'
    exec "AsyncRun -mode=term -pos=floaterm_reuse -position=right -width=0.5 ".l:cmd[l:ft]
  else
    call spacevim#util#err("spacevim#util#Gdb not supported in current filetype!")
  endif
endfunction
