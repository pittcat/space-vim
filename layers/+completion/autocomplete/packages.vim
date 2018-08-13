if g:spacevim.nvim
  MP 'Shougo/deoplete.nvim',{ 'do': ':UpdateRemotePlugins','on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }

  " deoplete lang
if g:spacevim.tmux
  Plug 'wellle/tmux-complete.vim',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
endif
  Plug 'zchee/deoplete-jedi',{'for': 'python'}
  Plug 'carlitux/deoplete-ternjs', {'for':['javascript','vue','javascript.jsx',]}
  " Plug 'zchee/deoplete-clang',{'for': ['c', 'cpp']}
  " Plug 'mhartington/nvim-typescript',{'for':'typescript'}
  " Plug 'sebastianmarkow/deoplete-rust',{'for':'rust'}
  " Plug 'zchee/deoplete-go', { 'do': 'make'}

  " common 
  Plug 'Shougo/neoinclude.vim',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }      "include completion
  Plug 'Shougo/neco-vim',{'for':'vim'}         "syntax completion


elseif g:spacevim.vim8
  MP 'Shougo/deoplete.nvim',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
  MP 'roxma/nvim-yarp',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
  MP 'roxma/vim-hug-neovim-rpc',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }

  " deoplete lang
  Plug 'wellle/tmux-complete.vim',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }
  Plug 'zchee/deoplete-jedi',{'for': 'python'}
  Plug 'carlitux/deoplete-ternjs', {'for':['javascript','vue','javascript.jsx',]}
  Plug 'zchee/deoplete-clang',{'for': ['c', 'cpp']}
  " Plug 'mhartington/nvim-typescript',{'for':'typescript'}
  " Plug 'sebastianmarkow/deoplete-rust',{'for':'rust'}
  " Plug 'zchee/deoplete-go', { 'do': 'make'}

  " common 
  Plug 'Shougo/neoinclude.vim',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }      "include completion
  Plug 'Shougo/neco-vim',{'for':'vim'}         "syntax completion


endif
