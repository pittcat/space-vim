    " \ 'c': ['clangd', '-compile-commands-dir=' . getcwd() . '/build'],
    " \ 'cpp': ['clangd', '-compile-commands-dir=' . getcwd() . '/build'],
let g:LanguageClient_serverCommands = {
    \ 'python':['pyls'],
    \ 'c': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'cpp': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'cuda': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'objc': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'css' : ['css-languageserver','--stdio'],
    \ 'less' : ['css-languageserver','--stdio'],
    \ 'sass' : ['css-languageserver','--stdio'],
    \ 'go': ['go-langserver', '-gocodecompletion', '-func-snippet-enabled'],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'ruby': ['solargraph','stdio'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'java': ['jdtls'],
    \ 'vue': ['vls'],
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'php' : ['php',expand('$HOME/.composer/vendor/bin/php-language-server.php')],
    \ 'lua' : ['lua-lsp']
    \ }
let g:LanguageClient_useFloatingHover=1
let g:LanguageClient_autoStart = 1
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '$HOME/.space-vim/layers/+tools/lspc/settings.json'
set completefunc=LanguageClient#complete
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()
let g:LanguageClient_completionPreferTextEdit=1
let g:LanguageClient_hasSnippetSupport =0
let g:LanguageClient_loggingLevel = 'ERROR'
let g:LanguageClient_loggingFile = stdpath('data') . '/LanguageClient.log'
let g:LanguageClient_serverStderr = stdpath('data') . '/LanguageServer.log'
" disable interact with ale
let g:LanguageClient_diagnosticsEnable=0

if has_key(g:plugs, 'ncm2')
  let g:LanguageClient_hasSnippetSupport =1
endif
if has_key(g:plugs, 'denite.nvim')
  nnoremap  <silent> <F1> :Denite contextMenu <cr>
else
  nnoremap <silent> <F1> :call LanguageClient_contextMenu()<CR>
endif
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gvd :call LanguageClient#textDocument_definition({'gotoCmd': 'split'})<CR>
nnoremap <silent> <localleader>cn :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <leader><leader>z :pc<CR>
nnoremap <localleader>sr :LanguageClientStop<cr>:sleep 1000m<cr>:LanguageClientStart<cr>
autocmd BufEnter * if (expand('%:t')=='__LanguageClient__' && &filetype ==# 'markdown')
      \ | nnoremap <silent> <buffer> q <C-w>c | endif

augroup LanguageClient_config
  autocmd!
  autocmd silent! User LanguageClientStarted setlocal signcolumn=yes
  autocmd silent! User LanguageClientStopped setlocal signcolumn=auto
augroup END
