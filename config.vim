autocmd! BufWritePost,BufReadPost * Neomake
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)
call neomake#configure#automake({
\ 'BufWritePost': {'delay': 0},
\ 'BufWinEnter': {},
\ 'TextChanged': {'delay':0},
\ 'InsertLeave': {'delay':0},
\ }, 1000)
let g:neomake_open_list = 2
" python config
let g:neomake_python_flake8_maker = {
    \ 'args': ['--ignore=W,E501,E231,E225,E741,E116,E3,E226',  '--format=default'],
    \ 'errorformat':
        \ '%E%f:%l: could not compile,%-Z%p^,' .
        \ '%A%f:%l:%c: %t%n %m,' .
        \ '%A%f:%l: %t%n %m,' .
        \ '%-G%.%#',
    \ }
let g:neomake_html_enabled_makers = ['tidy']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_css_enabled_makers = ['csslint']
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_c_enabled_makers = ['clang']
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_markdown_enabled_makers = ['mdl']
let g:neomake_sh_enabled_makers = ['shellcheck']
let g:neomake_rust_enabled_makers = ['rustc']
let g:neomake_java_enabled_makers = ['javac']
