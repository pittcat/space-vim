" if g:MAC
    " Plug 'ybian/smartim'
" endif

MP 'luochen1990/rainbow'

MP 'kshenoy/vim-signature'        , { 'on': [] }
MP 'tpope/vim-rsi'                , { 'on': [] }
MP 'xtal8/traces.vim'             , { 'on': [] }
MP 'RRethy/vim-illuminate'
call timer_start(500, 'spacevim#defer#defaults')

MP 'mhinz/vim-startify', { 'on': 'Startify' }
autocmd! User vim-startify call spacevim#autocmd#startify#Init()
augroup spacevimStart
  autocmd!
  autocmd VimEnter *
              \   if !argc()
              \|    call plug#load('vim-startify')
              \|    silent! Startify
              \|  endif
augroup END
