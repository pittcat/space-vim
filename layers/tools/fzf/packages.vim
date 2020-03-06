if g:spacevim.timer
  MP 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all', 'on': [] }
  MP 'yuki-ycino/fzf-preview.vim'
  MP 'junegunn/fzf.vim', { 'on': [] }
  call timer_start(280, 'spacevim#defer#fzf')
else
  MP 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all' }
  MP 'yuki-ycino/fzf-preview.vim'
  MP 'junegunn/fzf.vim'
endif
