" python-mode {
  let g:pymode_lint_checkers = ['pyflakes']
  let g:pymode_trim_whitespaces = 0
  let g:pymode_options = 0

  let g:pymode_indent = 1
  let g:pymode_folding = 0
  let g:pymode_options_colorcolumn = 1
  let g:pymode_breakpoint_bind = '<leader>br'

  let g:pymode_run = 0                  " quick run 
  let g:pymode_python = 'python3'       " version
  let g:pymode_doc = 0     "启用python-mode内置的python文档，使用K进行查找
  let g:pymode_rope = 0

  if spacevim#load('syntax-checking')
    let g:pymode_lint = 0
  endif
" }
