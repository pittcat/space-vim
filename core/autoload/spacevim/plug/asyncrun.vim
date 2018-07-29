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
endfunction

" function! spacevim#plug#asyncrun#VisualSelectRun()
  " let l:ft = &filetype
  " let l:startl = line("'<")
  " let l:endl = line("'>")
  " let l:lines = getline(l:startl,l:endl)
  " let visualselect = join(l:lines, "\n")

  " let l:cmd = {
        " \ 'sh'     : "time bash -c ",
        " \ 'python' : "time python -c ",
        " \ 'javascript': "time node -e ",
        " \}

  " exec "AsyncRun! ".l:cmd[l:ft] . string(visualselect)
" endfunction

