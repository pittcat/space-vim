### How to get all buffer name lists ? How to match special buffer by match string ? 

### 屏幕闪烁，也许是OpenBrowser的问题
```
autocmd FileType python nnoremap <buffer> <leader>op :OpenBrowser http://localhost:5555/<cr>
autocmd FileType python vnoremap <buffer> <leader>op <nop>
```


### vimspector reset 之后留下一个无效的terminal buffer(debugger layer)

临时解决办法
```
function VimspertorDrop() abort(debugger layer config file)

\ 'q':['VimspertorDrop()','Vreset'], (localleader.vim)
```
