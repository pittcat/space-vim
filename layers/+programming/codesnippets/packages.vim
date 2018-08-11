" Refer to https://github.com/junegunn/vim-plug/wiki/faq
" Load on nothing
MP 'SirVer/ultisnips', { 'on': [], 'on_event': 'InsertEnter' }
MP 'honza/vim-snippets', { 'on': [], 'on_event': 'InsertEnter' }

augroup loadSnips
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'vim-snippets')
              \| autocmd! loadSnips
augroup END
