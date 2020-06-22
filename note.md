- 更换colortheme 之后需要对

```
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=NONE ctermbg=0 ctermfg=NONE guibg=Gray35
augroup END
```
调整
