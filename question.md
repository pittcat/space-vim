### How to get all buffer name lists ? How to match special buffer by match string ? 

### 屏幕闪烁，也许是OpenBrowser的问题
```
autocmd FileType python nnoremap <buffer> <leader>op :OpenBrowser http://localhost:5555/<cr>
autocmd FileType python vnoremap <buffer> <leader>op <nop>
```

### coc.nvim 也许和vim-pairs 矛盾

### 获取python 的版本号

```
if has("python3")
  let lst = pyxeval('sys.version_info')
  let g:spacevim_python_version=lst[0]*100+lst[1]*10+lst[2]
else
    let g:spacevim_python_version=0
endif

```

```
if has("python3")
    python3 import vim; 
    from sys import version_info as v; 
    vim.command('let g:spacevim_python_version=%d' % (v[0]*100+ v[1]*10+v[2]))
else
    let g:spacevim_python_version=0
endif

```
