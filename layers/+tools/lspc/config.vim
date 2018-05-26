    " \ 'cpp':  ['clangd','-run-synchronously'],
    " \ 'c':  ['clangd','-run-synchronously'],
let g:LanguageClient_serverCommands = {
    \ 'python':['pyls'],
    \ 'cpp': ['cquery','--log-file=/tmp/cq.log'],
    \ 'c': ['cquery','--log-file=/tmp/cq.log'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'go': ['go-langserver'],
    \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_loadSettings = 1
" Use an absolute configuration path if you want system-wide settings
if g:spacevim_vim8
  let g:LanguageClient_settingsPath = $HOME.'/.vim/settings.json'
else
  let g:LanguageClient_settingsPath = $HOME.'/.config/nvim/settings.json'
endif
let g:LanguageClient_loggingLevel = 'DEBUG'
" disable interact with ale
let g:LanguageClient_diagnosticsEnable=0

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>cn :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <leader><leader>z :pc<CR>

augroup LanguageClient_config
  autocmd!
  autocmd silent! User LanguageClientStarted setlocal signcolumn=yes
  autocmd silent! User LanguageClientStopped setlocal signcolumn=auto
augroup END

