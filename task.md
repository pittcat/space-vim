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




2. 暂时只能使用coc-ultisnips，后面切换到coc-snippets

3. 完成coc对lspc的替换

4. 完成对ultisnips的替换，snippets.ultisnips.directories的文件夹问题
