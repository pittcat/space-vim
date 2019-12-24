" Refer to https://github.com/junegunn/vim-plug/wiki/faq
" Load on nothing
MP 'SirVer/ultisnips' 
MP 'honza/vim-snippets' 

" snippets
" {
" web 
"
" Plug 'jvanja/vim-bootstrap4-snippets'       "html
Plug 'epilande/vim-react-snippets',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }          "react
Plug 'isRuslan/vim-es6',{'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter'] }                     "es6
" cpp
" }

augroup loadSnips
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'vim-snippets')
              \| autocmd! loadSnips
augroup END
