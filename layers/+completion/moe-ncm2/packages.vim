if g:spacevim.nvim
  Plug 'ncm2/ncm2',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
  Plug 'roxma/nvim-yarp',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }

elseif g:spacevim.vim8
  Plug 'ncm2/ncm2',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
  Plug 'roxma/nvim-yarp',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
endif

  Plug 'ncm2/ncm2-bufword',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
if g:spacevim.tmux
  Plug 'ncm2/ncm2-tmux',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
endif
  Plug 'ncm2/ncm2-path',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
  Plug 'ncm2/ncm2-ultisnips',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
  Plug 'ncm2/ncm2-neoinclude',{'for':['c','cpp']}
  Plug 'Shougo/neoinclude.vim',{'for':['c','cpp']}
  Plug 'ncm2/ncm2-vim',{'for':'vim'}
  Plug 'Shougo/neco-vim',{'for':'vim'}

  " languages
  " Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
  " Plug 'ncm2/ncm2-pyclang',  {'for':['c','cpp']}
  Plug 'ncm2/ncm2-cssomni',{'for':'css'}
  Plug 'ncm2/ncm2-jedi',{'for':'python'}
  " Plug 'ncm2/ncm2-tern',{'do': 'npm install','for':['javascript','javascript.jsx']}
