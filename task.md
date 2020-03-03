### 周末做小调整，不做大更新，两个月做一次大的更新，添加新的特性的插件等等

#### https://github.com/skywind3000/asynctasks.vim
#### https://github.com/puremourning/vimspector
#### https://github.com/AndrewRadev/tagalong.vim
#### https://github.com/kyazdani42/highlight.lua
#### ludovicchabant/vim-gutentags
```
let s:vim_tags = expand('~/.cache/tags')
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_define_advanced_commands = 1
let g:gutentags_auto_add_cscope=0
let g:gutentags_auto_add_gtags_cscope = 0

let g:gutentags_modules = []
if executable('ctags')
  let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

```

有时候需要清空 ./cache/tags解决错误
