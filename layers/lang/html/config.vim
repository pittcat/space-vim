" html5.vim {
  let g:html5_event_handler_attributes_complete = 0
" }

" emmet.vim {
  let g:user_emmet_mode = 'a'
  let g:user_emmet_leader_key='<C-y>'
  let g:user_emmet_settings = {
    \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \  },
    \}

" }

autocmd FileType html nnoremap <buffer> <leader>op :execute('OpenBrowser http://localhost:3000/'.expand("%:t"))<cr>
