
1. Add visual select to run    


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
          exec 'AsyncStop'
          exec "AsyncRun! ".l:cmd[l:ft] . l:fname
        else
          call spacevim#util#err("spacevim#util#VisualSelectionRun not supported in current filetype!")
        endif
        " autocmd User AsyncRunStop exec "silent !rm " . '~/tempfile.' . expand('%:e')
      endfunction

      vnoremap <silent> <F5> :call CreateTemperory()<cr>

