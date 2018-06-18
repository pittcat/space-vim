function! spacevim#plug#asyncrun#CompileAndRun()
  let l:cmd = {
        \ 'c'      : "gcc '%:p' -o  './exec/%:t:r'; time %:p:h/exec/%:t:r<",
        \ 'cpp'    : "g++ -std=c++11 '%:p' -o './exec/%:t:r'; time %:p:h/exec/%:t:r",
        \ 'sh'     : "time bash %",
        \ 'go'     : "go run %",
        \ 'ruby'   : "time ruby %",
        \ 'java'   : "javac %:p; time java %:p:h/%:t:r",
        \ 'rust'   : "rustc '%:p' -o  './exec/%:t:r'; time %:p:h/exec/%:t:r",
        \ 'python' : "time python %",
        \ 'haskell': "ghc %:p -o %< && %:p:h/%:t:r<",
        \ 'javascript': "time node %<"
        \}
  let l:ft = &filetype
  if has_key(l:cmd, l:ft)
    exec 'w'
    exec "AsyncRun! ".l:cmd[l:ft]
  else
    call spacevim#util#err("spacevim#util#CompileAndRun not supported in current filetype!")
  endif
endfunction
