1. make fugitive cooperation with asyncrun

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



2. replace vim_current_word with vim-interestingwords

3. add vista.vim

https://github.com/liuchengxu/vista.vim
