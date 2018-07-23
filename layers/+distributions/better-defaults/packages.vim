" if g:MAC
    " Plug 'ybian/smartim'
" endif

if g:spacevim.timer
  MP 'kshenoy/vim-signature'        , { 'on': [] }
  MP 'tpope/vim-rsi'                , { 'on': [] }
  MP 'xtal8/traces.vim'             , { 'on': [] }
  MP 'dominikduda/vim_current_word' , { 'on': [] }
  call timer_start(500, 'spacevim#defer#defaults')
else
  MP 'tpope/vim-rsi'
  MP 'kshenoy/vim-signature'
  MP 'dominikduda/vim_current_word'
endif

MP 't9md/vim-choosewin', { 'on': '<Plug>(choosewin)' }
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

MP 'ntpeters/vim-better-whitespace', { 'on': 'StripWhitespace' }

MP 'google/vim-searchindex'
