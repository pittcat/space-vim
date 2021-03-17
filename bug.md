### 屏幕闪烁，也许是OpenBrowser的问题
```
autocmd FileType python nnoremap <buffer> <leader>op :OpenBrowser http://localhost:5555/<cr>
autocmd FileType python vnoremap <buffer> <leader>op <nop>
```


### vista 在markdown 中的使用有问题

总有报错：暂时解决方案事将vista 在markdown 里面禁用

function! VistaNS()
  echo "Disable vista for markdown"
endfunction
command!  VistaNS call VistaNS()
autocmd FileType markdown nnoremap <buffer> <leader>vf :VistaNS<CR>
autocmd FileType markdown nnoremap <buffer> <leader>vs :VistaNS<CR>
