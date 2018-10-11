1.  make visual select to run


    		function! CreateTemperory()
    			let visualselect=spacevim#util#VisualSelection()
    			let l:fname='~/tempfile.' . expand('%:e')
    			silent! execute 'w' . l:fname
    			silent! call writefile(split(visualselect, "\n", 1), glob(l:fname), 's')
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
    				exec "AsyncRun! ".l:cmd[l:ft] . l:fname . ";rm " . fname
    			else
    				call spacevim#util#err("spacevim#util#VisualSelectionRun not supported in current filetype!")
    			endif
    		endfunction

    		vnoremap <silent> <F5> :call CreateTemperory()<cr>



            function! spacevim#plug#asyncrun#CreateTemperoryFile()
              let l:visualselect=spacevim#util#VisualSelection()
              let l:fname='~/tempfile.' . expand('%:e')
              silent! execute 'w' . l:fname
              silent! call writefile(split(l:visualselect, "\n", 1), glob(l:fname), 's')

            endfunction

            function! spacevim#plug#asyncrun#QuickRunVisualTempfile()
              let l:fname='~/tempfile.' . expand('%:e')
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
              wincmd j
            endfunction

      vnoremap <silent> <F5> :call CreateTemperory()<cr>:call QuickRunVisualTempfile()<cr>

2. make fugitive cooperation with asyncrun

    ```
            " Cooperate with famous fugitive

            if exists(':Make') == 2
              noautocmd Make
            else
              silent noautocmd make!
              redraw!
              return 'call fugitive#cwindow()'
            endif 
            command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
    ```


3. improve neoinclude.vim

    ```

    function! s:set_cpp_paths(bufnr) abort
      let files = split(glob('/usr/include/*'), '\n')
            \ + split(glob('/usr/include/c++/*'), '\n')
            \ + split(glob('/usr/include/*/c++/*'), '\n')
      call filter(files, 'isdirectory(v:val)')

      " Add cpp path.
      call neoinclude#util#set_default_dictionary(
            \ 'g:neoinclude#paths', 'cpp',
            \ getbufvar(a:bufnr, '&path') .
            \ ','.join(files, ','))
    endfunction

    ```
