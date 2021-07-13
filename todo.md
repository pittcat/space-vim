### 3 个月做一次大的更新，添加新的特性的插件等等，测试修改调试时间为一周

### 添加插件原则

- 是否维护时间长
- star 是否多（侧面反映用户多不多？重要组成部分插件 [completion,lint,formater,debugger]>1000 stars，普通部分插件》400),issue 是否多，bug 是否多（尤其是影响使用的大型 bug)
- 作者是否 robust（查看作者是否写过其他著名插件，作者的 dotfile 是否长时间更新 nvim 配置）

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

#### 增强 char word 跳转功能？

phaazon/hop.nvim
ggandor/lightspeed.nvim
2021-03-13 14:04
半年以后再看

#### 一年后查看是否替换find and repalce 方案

- https://github.com/dyng/ctrlsf.vim
- https://github.com/eugen0329/vim-esearch
- https://github.com/romgrk/searchReplace.vim
- https://github.com/windwp/nvim-spectre
- 不用任何插件，选取fzf.vim 作为find and replace方案
  2021-06-29 14:36

#### nvim-treesitter

一年以后等到 nvim 0.6 再添加 (2021-06-29 14:41)

#### skywind3000/asynctasks.vim

一年以内尝试添加 (2021-06-29 14:41)


#### 关于是否切换packer.vim 作为插件管理器
1. 如果plug.vim 停止维护
2. packer.vim 过10k star

满足以上条件过后可以考虑切换

#### 将nvim config 迁移到lua 
packer.vim 作为插件管理器之后，可以考虑是否迁移问题，大致时间三年以后。
2021-07-09 21:33

#### textobj edit mode improve

https://github.com/nvim-treesitter/nvim-treesitter-textobjects
https://github.com/mfussenegger/nvim-ts-hint-textobject

等待treesitter 成熟以后吧
