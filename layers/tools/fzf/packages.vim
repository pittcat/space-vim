if g:spacevim.timer
  MP 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all', 'on': [] }
  MP 'chengzeyi/fzf-preview.vim'
  MP 'junegunn/fzf.vim', { 'on': [] }
  MP 'antoinemadec/coc-fzf'
  call timer_start(280, 'spacevim#defer#fzf')
else
  MP 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all' }
  MP 'chengzeyi/fzf-preview.vim'
  MP 'junegunn/fzf.vim'
  MP 'antoinemadec/coc-fzf'
endif
