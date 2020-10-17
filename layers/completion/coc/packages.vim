MP 'neoclide/coc.nvim', {'branch': 'release','on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'],'frozen':1}
MP 'Shougo/neco-vim',{'for':'vim','on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
MP 'neoclide/coc-neco',{'for':'vim','on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
MP 'tjdevries/coc-zsh',{'for':'zsh'}
" MP 'Shougo/neoinclude.vim',{'for':['c','cpp',],'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter']}
" MP 'jsfaint/coc-neoinclude',{'for':['c','cpp',],'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter']}
"
" snippets
MP 'honza/vim-snippets'
MP 'beeender/Comrade',{'on':[]}

augroup load_comrade
  autocmd!
  autocmd InsertEnter * call plug#load('Comrade') | autocmd! load_comrade
augroup END
