- 更换colortheme 之后需要对

```
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=NONE ctermbg=0 ctermfg=NONE guibg=Gray35
augroup END
```
调整

- 切换输入法
```
  Plug 'rlue/vim-barbaric',{'for':'markdown'}
  set ttimeoutlen=0
  let g:barbaric_ime = 'fcitx'
  let g:barbaric_scope = 'buffer'
  let g:barbaric_timeout = -1
  let g:barbaric_fcitx_cmd = 'fcitx5-remote'
```
