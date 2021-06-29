### 3个月做一次大的更新，添加新的特性的插件等等,测试修改调试时间为一周
### 添加插件原则
- 稳定实用第一
- 是否维护时间长
- star是否多(侧面反映用户多不多?),issue是否多，bug是否多(尤其是影响使用的大型bug)
- 作者是否robust(查看作者是否写过其他插件，作者的dotfile是否长时间更新nvim配置)

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

#### 增强char word 跳转功能？
phaazon/hop.nvim
ggandor/lightspeed.nvim
2021-03-13 14:04
半年以后再看
#### 半年后查看是否替换far.vim
- https://github.com/eugen0329/vim-esearch
- https://github.com/romgrk/searchReplace.vim
- https://github.com/windwp/nvim-spectre
- https://github.com/dyng/ctrlsf.vim
2021-06-29 14:36

#### nvim-treesitter
一年以后等到nvim 0.6 再添加(2021-06-29 14:41)

#### nvim-dap
一年以后尝试添加(2021-06-29 14:41)

#### skywind3000/asynctasks.vim
一年以内尝试添加(2021-06-29 14:41)
