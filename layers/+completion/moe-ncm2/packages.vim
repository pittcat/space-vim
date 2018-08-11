if g:spacevim.nvim
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'

elseif g:spacevim.vim8
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
endif

  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-tmux'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-ultisnips'
  Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'
  Plug 'ncm2/ncm2-vim',{'for':'vim'}
  Plug 'Shougo/neco-vim',{'for':'vim'}

  " languages
  " Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}']}
  Plug 'ncm2/ncm2-pyclang',  {'for':['c','cpp']}
  Plug 'ncm2/ncm2-cssomni',{'for':'css'}
  Plug 'ncm2/ncm2-jedi',{'for':'python'}

