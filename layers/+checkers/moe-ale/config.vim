let g:ale_linters={
          \ 'vim' : ['vint'],
          \ 'html' : ['tidy'],
          \ 'c' :['clang'],
          \ 'cpp' :['clang'],
          \ 'css' : ['prettier'],
          \ 'python' : ['flake8'],
          \ 'markdown' : ['mdl'],
          \ 'javascript.jsx' : ['eslint'],
          \ 'javascript' : ['eslint'],
          \ 'typescript' : ['eslint'],
          \ 'ruby' : ['rubocop'],
          \ 'rust' : ['rustc'] ,
          \ 'sh':['language-server'],
          \ 'java': ['javac'],
          \ 'go'  : ['golint'],
          \ 'yaml'  : ['prettier'],
          \ 'json' : ['jsonlint'],
          \}

let g:ale_fixers = {
          \ 'python': ['yapf'],
          \ 'javascript': ['prettier'],
          \ 'javascript.jsx': ['prettier'],
          \ 'css' : ['prettier'],
          \ 'html': ['tidy'],
          \ 'less': ['prettier'],
          \ 'scss': ['prettier'],
          \ 'json': ['prettier'],
          \ 'graphql': ['prettier'],
          \ 'markdown': ['prettier'],
          \ 'vue': ['prettier'],
          \ 'rust': ['rustfmt'],
          \ 'ruby': ['rubocop'],
          \ 'cpp' : ['clang-format'],
          \ 'c' : ['clang-format'],
          \ 'java' : ['google_java_format'],
          \ 'go'  : ['gofmt'],
          \ 'typescript' : ['prettier'],
          \ 'yaml' : ['prettier'],
\}
nnoremap <localleader>\ :ALEFix<cr>
let g:ale_set_highlights = 0
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']

let g:ale_sign_error = '✖︎'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str =  '✖︎ Error' 
let g:ale_echo_msg_warning_str = '⚠ Warning'
let g:ale_set_loclist = 1

" language
"{
let g:ale_python_flake8_options = '--ignore=W,E501,E231,E225,E741,E116,E3,E226,E121'         " python
"}
