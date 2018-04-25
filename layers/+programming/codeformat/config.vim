let g:neoformat_only_msg_on_error = 0
let g:neoformat_try_formatprg = 1
nnoremap <F3> :Neoformat<cr>
nnoremap <localleader>= :Neoformat<cr>
let g:neoformat_enabled_python = ['yapf']
let g:neoformat_enabled_html = ['prettydiff']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_less= ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_graphql = ['prettier']
let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_enabled_vue = ['prettier']
let g:neoformat_enabled_rust = ['rustfmt']
let g:neoformat_enabled_rust = ['rubocop']
let g:neoformat_enabled_c = ['clang-format']
let g:neoformat_enabled_cpp = ['clang-format']
