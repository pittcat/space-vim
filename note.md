#### 更换colortheme 之后需要对

```
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=NONE ctermbg=0 ctermfg=NONE guibg=Gray35
augroup END
```
调整

#### 切换输入法
```
  Plug 'rlue/vim-barbaric',{'for':'markdown'}
  set ttimeoutlen=0
  let g:barbaric_ime = 'fcitx'
  let g:barbaric_scope = 'buffer' let g:barbaric_timeout = -1
  let g:barbaric_fcitx_cmd = 'fcitx5-remote'
```

#### Finding and replacing text without other plugin
1. To search text within project files simply type :Rg <text>. This will open up a FZF buffer with a list of files.
2. Then with a Tab key you can select/deselect files that you want to pass to quickfix window. To select all files tap Alt+a and to deselect Alt+d.
3. Once your selection is ready hit Enter to pass selected files to quickfix buffer.
4. Now you can replace text in all files within quickfix buffer with :cfdo %s/<text to search>/<text to replace with>/g | update.

The cfdo command simply executes command on every file in the list, and the update command after the pipe saves the results to the disk.
