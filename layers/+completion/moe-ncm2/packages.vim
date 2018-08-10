if g:spacevim.nvim
  Plug 'ncm2/ncm2'

elseif g:spacevim.vim8
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
endif

  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-tmux'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-ultisnips'

  " languages
  Plug 'ncm2/ncm2-tern',  {'do': 'npm install','for':'javascript'}

