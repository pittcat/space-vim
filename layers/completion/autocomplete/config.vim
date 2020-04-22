scriptencoding utf-8

  inoremap <expr> <down> pumvisible() ? "\<C-n>" : "\<down>"
  inoremap <expr> <up> pumvisible() ? "\<C-p>" : "\<up>"


  set completeopt-=preview  "close show_docstring
  let g:deoplete#enable_at_startup = 0
  " Set minimum syntax keyword length.
  
  call deoplete#custom#option({
  \ 'auto_complete_delay': 20,
  \ 'smart_case': v:true,
  \ 'camel_case': v:true,
  \ 'min_pattern_length':2
  \ })
  


  " Plugin key-mappings.
  inoremap <expr><C-g> deoplete#undo_completion()
  inoremap <expr><C-l> deoplete#refresh()

  " <C-h>: close popup and delete backword char.
  inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"

  " register omni
  call deoplete#custom#source('omni', 'functions', {
  \ 'html': 'htmlcomplete#CompleteTags',
  \ 'css' : 'csscomplete#CompleteCSS',
  \ 'scss' : 'csscomplete#CompleteCSS',
  \ 'sass' : 'csscomplete#CompleteCSS',
  \ 'xml' : 'xmlcomplete#CompleteTags',
  \ 'markdown' : 'htmlcomplete#CompleteTags',
  \ })

  call deoplete#custom#source('omni', 'input_patterns', {
  \ 'html' : '<[^>]',
  \ 'css'  : '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
  \ 'scss' : '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
  \ 'sass' : '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
  \ 'xml'  : '<[^>]*',
  \ 'md'   : '<[^>]*',
  \})

  " fix conflict with multiple_cursors
  function! g:Multiple_cursors_before()
    call deoplete#custom#buffer_option('auto_complete', v:false)
  endfunction
  function! g:Multiple_cursors_after()
    call deoplete#custom#buffer_option('auto_complete', v:true)
  endfunction
" }


  source $HOME/.space-vim/layers/+completion/autocomplete/langconf.vim


  function! ExpandSnippetOrCarriageReturn()
      let snippet = UltiSnips#ExpandSnippet()
      if g:ulti_expand_res > 0
          return snippet
      elseif g:spacevim.vim8
          return "\<C-y>"
      else 
        return deoplete#close_popup()
      endif
  endfunction

  inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

  " languages
  let g:python_host_skip_check=1
  let g:python_host_prog = '/usr/bin/python'
  let g:python3_host_skip_check=1
  let g:python3_host_prog = '/usr/bin/python3'