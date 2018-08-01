let g:ale_linters={
          \ 'vim' : ['vint'],
          \ 'html' : ['tidy'],
          \ 'cpp' :['clang'],
          \ 'css' : ['prettier'],
          \ 'python' : ['flake8'],
          \ 'markdown' : ['mdl'],
          \ 'javascript.jsx' : ['eslint'],
          \ 'javascript' : ['eslint'],
          \ 'ruby' : ['rubocop'],
          \ 'rust' : ['rustc'] ,
          \ 'sh':['language-server'],
          \ 'java': ['javac'],
          \}

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
let g:ale_python_flake8_options = '--ignore=W,E501,E231,E225,E741,E116,E3,E226'         " python
"}
