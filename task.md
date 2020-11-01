### 周末做小调整，不做大更新，两个月做一次大的更新，添加新的特性的插件等等

#### https://github.com/skywind3000/asynctasks.vim(M)

#### https://github.com/puremourning/vimspector(L)

#### https://github.com/AndrewRadev/tagalong.vim(S)

#### https://github.com/gpanders/vim-medieval(S)

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
google/vim-searchindex

#### 添加 jetbrain ide 支持

```cpp
MP 'beeender/Comrade',{'on':[],'for':'java'}
augroup load_comrade
  autocmd!
  autocmd InsertEnter call plug#load('Comrade') | autocmd! load_comrade
augroup END

CocInstall coc-comrade
```

这个方案只能单独的用 ide 和 nvim 的联合工作，不能与 lsp 的补全联用，会错乱。

#### treesitter 

半年后切换到nvim-treesitter


#### 更换插件时间限制

- 模糊匹配插件:(1 year)---2020-06-29 22:49
- debug 插件:vimspector(1 year)---2020-06-29 22:49
- 补全插件：coc-nvim(3 个月更新一次)2020-06-29 22:50
- bufferline:barbar.nvim(半年)
