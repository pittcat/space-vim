if g:spacevim.nvim
  MP 'Shougo/deoplete.nvim',{ 'do': ':UpdateRemotePlugins'  }

  " deoplete lang
  Plug 'wellle/tmux-complete.vim'
  Plug 'zchee/deoplete-jedi',{'for': 'python'}
  Plug 'carlitux/deoplete-ternjs', {'for':['javascript','vue','javascript.jsx',]}
  Plug 'zchee/deoplete-clang',{'for': ['c', 'cpp']}
  " Plug 'mhartington/nvim-typescript',{'for':'typescript'}
  " Plug 'sebastianmarkow/deoplete-rust',{'for':'rust'}
  " Plug 'zchee/deoplete-go', { 'do': 'make'}

  " common 
  Plug 'Shougo/neoinclude.vim'      "include completion
  Plug 'Shougo/neco-vim'         "syntax completion

  " snippets
  " {
  " web 
  "
  " Plug 'jvanja/vim-bootstrap4-snippets'       "html
  Plug 'epilande/vim-react-snippets'          "react
  Plug 'isRuslan/vim-es6'                     "es6
  " cpp
  " }

elseif g:spacevim.vim8
  MP 'Shougo/deoplete.nvim'
  MP 'roxma/nvim-yarp'
  MP 'roxma/vim-hug-neovim-rpc'

  " deoplete lang
  Plug 'wellle/tmux-complete.vim'
  Plug 'zchee/deoplete-jedi',{'for': 'python'}
  Plug 'carlitux/deoplete-ternjs', {'for':['javascript','vue','javascript.jsx',]}
  Plug 'zchee/deoplete-clang',{'for': ['c', 'cpp']}
  " Plug 'mhartington/nvim-typescript',{'for':'typescript'}
  " Plug 'sebastianmarkow/deoplete-rust',{'for':'rust'}
  " Plug 'zchee/deoplete-go', { 'do': 'make'}

  " common 
  Plug 'Shougo/neoinclude.vim'      "include completion
  Plug 'Shougo/neco-vim'         "syntax completion


endif
