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
      \ 'source_names': 'short',
			\ 'highlight_matched_char' : 'Function',
			\ 'highlight_matched_range' : 'Function',
			\ 'direction': 'rightbelow',
      \ })

if executable('rg')
    call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
else
    call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
endif

nnoremap <leader>ff :Denite file/rec -auto-preview -vertical-preview<cr>
nnoremap <silent> <localleader>rg :Denite grep:. -auto-preview  -vertical-preview<CR>
nnoremap <silent> <leader>rg :DeniteCursorWord grep:. -auto-preview -vertical-preview<CR>
nnoremap <silent> <leader>bb :Denite buffer <cr>
nnoremap <silent> <leader>fl :Denite line <cr>
nnoremap <silent> <leader>sf :Denite session<cr>
nnoremap <silent> <leader>fc :Denite command<cr>
nnoremap <Leader>fep :Denite file/rec:~/MEGA/code/dotfiles<CR>

