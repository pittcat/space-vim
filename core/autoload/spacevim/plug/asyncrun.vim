let g:asyncrun_shell = '/usr/bin/zsh'
let g:asyncrun_shellflag = '-c'

function! spacevim#plug#asyncrun#CompileAndRun()
  let l:cmd = {
        \ 'c'      : "gcc '%:p' -o  './exec/%:t:r'; time %:p:h/exec/%:t:r<",
        \ 'cpp'    : "g++ -std=c++11 '%:p' -o '%:p:h/exec/%:t:r'; time %:p:h/exec/%:t:r",
        \ 'sh'     : "time bash %",
        \ 'go'     : "go run %",
        \ 'ruby'   : "time ruby %",
        \ 'rust'   : "rustc '%:p' -o  './exec/%:t:r'; time %:p:h/exec/%:t:r",
        \ 'python' : "time python %",
        \ 'haskell': "ghc %:p -o %< && %:p:h/%:t:r<",
        \ 'javascript': "time node %<",
        \ 'java'   : "javac %;java %:t:r;rm %:t:r.'class'",
        \}
  " javac -d classes MyProgram.java
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    exec 'w'
    exec "AsyncRun! ".l:cmd[l:ft]
  else
    call spacevim#util#err("spacevim#util#CompileAndRun not supported in current filetype!")
  endif
  call asyncrun#quickfix_toggle(14, 1)
endfunction


function! spacevim#plug#asyncrun#CreateTemperoryFile()
  let l:visualselect=spacevim#util#VisualSelection()
  let l:fname='/tmp/tempfile.' . expand('%:e')
  silent! execute 'w' . l:fname
  silent! call writefile(split(l:visualselect, "\n", 1), glob(l:fname), 's')

endfunction

function! spacevim#plug#asyncrun#QuickRunVisualTempfile()
  let l:fname='/tmp/tempfile.' . expand('%:e')
  let l:cmd = {
        \ 'sh'     : "time bash ",
        \ 'ruby'   : "time ruby ",
        \ 'python' : "time python ",
        \ 'javascript': "time node ",
        \}
  let l:ft = &filetype

  if has_key(l:cmd, l:ft)
    if filereadable(l:fname)
      exec "silent !rm " . l:fname
    endif
    exec "AsyncRun! ".l:cmd[l:ft] . l:fname . ";rm " . l:fname
  else
    call spacevim#util#err("spacevim#util#VisualSelectionRun not supported in current filetype!")
  endif
  call asyncrun#quickfix_toggle(14, 1)
endfunction
