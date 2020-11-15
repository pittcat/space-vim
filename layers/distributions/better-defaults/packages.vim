" if g:MAC
    " Plug 'ybian/smartim'
" endif

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

" Bug here.
" MP 'kana/vim-operator-user',         { 'on': '<Plug>(operator-flashy)' }
" MP 'haya14busa/vim-operator-flashy', { 'on': '<Plug>(operator-flashy)' }

MP 'google/vim-searchindex'
