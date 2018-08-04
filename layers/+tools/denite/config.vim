call denite#custom#var('session', 'path', '~/.vim/session')

call denite#custom#map(
    \ 'insert',
    \ '<Down>',
    \ '<denite:move_to_next_line>',
    \ 'noremap'
    \)
call denite#custom#map(
    \ 'insert',
    \ '<Up>',
    \ '<denite:move_to_previous_line>',
    \ 'noremap'
    \)


call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

call denite#custom#option('default', {
      \ 'prompt': '➭',
      \ 'highlight_matched_char': 'None',
      \ 'highlight_matched_range': 'None',
      \ })

if executable('rg')
    call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
else
    call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
endif

nnoremap <leader>ff :Denite file/rec -vertical-preview -auto-highlight<cr>
nnoremap <silent> <localleader>rg :<C-u>Denite grep:. -auto-preview -auto-highlight -mode=normal <CR>
nnoremap <silent> <leader>bb :Denite buffer -auto-highlight<cr>
nnoremap <silent> <leader>fl :Denite line -auto-highlight<cr>
nnoremap <silent> <leader>sf :Denite session<cr>
nnoremap <silent> <leader>sf :Denite command<cr>

