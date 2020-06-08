let g:ale_linters={
          \ 'vim' : ['vint'],
          \ 'html' : ['tidy'],
          \ 'c' :['clangd'],
          \ 'cpp' :['clangd'],
          \ 'css' : ['prettier'],
          \ 'python' : ['flake8'],
          \ 'markdown' : ['write-good'],
          \ 'javascript.jsx' : ['eslint'],
          \ 'javascript' : ['eslint'],
          \ 'typescript' : ['eslint'],
          \ 'ruby' : ['rubocop'],
          \ 'rust' : ['analyzer'] ,
          \ 'sh':['shellcheck'],
          \ 'java': [],
          \ 'go'  : ['golint'],
          \ 'yaml'  : ['prettier'],
          \ 'json' : [],
          \ 'php' : ['php'],
          \ 'sql' : ['sqlint'],
          \ 'ocaml':['ols'],
          \ 'lua' : ['luacheck'],
          \ 'tex' : ['chktex'],
          \ 'cmake' : ['cmakelint']
          \}

let g:ale_rust_cargo_use_clippy=1
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
          \ 'php' : ['phpcbf'],
          \ 'sql' : ['sqlfmt'],
          \ 'ocaml': ['ocamlformat'],
          \ 'tex' : ['textlint'],
          \ 'lua' : ['remove_trailing_lines'],
          \ 'cmake' : ['cmakeformat']
          \ }
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']

let g:ale_set_highlights = 1
let g:ale_sign_error = '✖︎'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str =  '✖︎ Error' 
let g:ale_echo_msg_warning_str = '⚠ Warning'
let g:ale_hover_to_preview = 1
let g:ale_set_loclist = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = ' ✹ '

" language
"{
let g:ale_python_flake8_options = '--ignore=W,E501,E231,E225,E741,E116,E3,E226,E121'         " python
let g:ale_c_parse_compile_commands = 1                                                       " c/cpp
"}


" map
nnoremap <silent> <localleader>ff :ALEFix<cr>
