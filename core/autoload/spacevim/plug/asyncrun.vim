let g:asyncrun_shell = '/usr/bin/zsh'
let g:asyncrun_shellflag = '-c'
let $PYTHONUNBUFFERED=1

augroup AsyncrunGroup
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(14, 1)
augroup END

function! spacevim#plug#asyncrun#CompileAndRun()
  let l:cmd = {
        \ 'c'      : "gcc '%:p' -o '%:p:h/exec/%:t:r'; time %:p:h/exec/%:t:r",
        \ 'cpp'    : "g++ -std=c++11 '%:p' -o '%:p:h/exec/%:t:r'; time %:p:h/exec/%:t:r",
        \ 'sh'     : "time bash %",
        \ 'go'     : "go run %",
        \ 'ruby'   : "time ruby %",
        \ 'rust'   : "rustc '%:p' -o  './exec/%:t:r'; time %:p:h/exec/%:t:r",
        \ 'python' : "time python %",
        \ 'lua' : "time lua %",
        \ 'haskell': "ghc %:p -o %< && %:p:h/%:t:r<",
        \ 'javascript': "time node %<",
        \ 'java'   : "javac %;java %:t:r;rm %:t:r.'class'",
        \ 'tex'    : "evince %:p:h/%:t:r.pdf"
        \}
  " javac -d classes MyProgram.java
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    exec 'w'
    exec "AsyncRun! ".l:cmd[l:ft]
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
    exec "AsyncRun! ".l:cmd[l:ft]
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
    exec "AsyncRun! ".l:cmd[l:ft]
  else
    call spacevim#util#err("spacevim#util#Gdb not supported in current filetype!")
  endif
endfunction
