### 一个月做一次大的更新，添加新的特性的插件等等


#### https://github.com/skywind3000/asynctasks.vim(M)
#### ludovicchabant/vim-gutentags(S)

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

有时候需要清空 ./cache/tags 解决错误

#### 学习插件

xtal8/traces.vim


#### treesitter 

半年后切换到nvim-treesitter---2020-12-17
#### vista.vim
等待bug解决得差不多了再行添加
#### htop.nvim
phaazon/hop.nvim
2021-03-13 14:04
一年以后再看
