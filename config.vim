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
