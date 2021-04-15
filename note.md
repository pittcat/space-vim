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

- 如果只有一个窗口，然后同时打开了一个quickfix 的话bd会退出vim，这个时候的bd相当于q,这个问题是nvim-bqf当中引入的

- vimspetor.vim 或者 nvim-dap 的repl console 不能attach program ，一些调试场景下面应当选取vscode来作为调试工具。 
