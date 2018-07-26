MP 'tpope/vim-surround'
MP 'jiangmiao/auto-pairs', { 'on': [] }
MP 'terryma/vim-multiple-cursors'
" MP 'mg979/vim-visual-multi',{'branch':'test'}
MP 'brooth/far.vim'

MP 'scrooloose/nerdcommenter',        { 'on': '<Plug>NERDCommenterToggle' }
MP 'unblevable/quick-scope'
MP 'Shougo/echodoc.vim'

augroup spacevimAutoPairs
  autocmd!
  autocmd CursorHold,CursorHoldI,InsertEnter * call plug#load('auto-pairs') | call AutoPairsTryInit() | autocmd! spacevimAutoPairs
augroup END
