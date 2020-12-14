MP 'pittcat/vim-better-default'

"pittcat/vim-better-default
let g:vim_better_default_buffer_key_mapping = 0
let vim_better_default_file_key_mapping = 0

if !spacevim#load('vem') && !spacevim#load('lightline') && !spacevim#load('barbar')
  MP 'liuchengxu/eleline.vim'
  MP 'ap/vim-buftabline'
endif
