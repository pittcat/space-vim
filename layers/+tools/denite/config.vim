call denite#custom#var('session', 'path', '~/.vim/session')

call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/','tags'])

call denite#custom#option('default', {
      \ 'prompt': '➭',
      \ 'auto_accel': v:true,
      \ 'source_names': 'short',
      \ 'highlight_matched_char' : 'MoreMsg',
      \ 'highlight_matched_range' : 'MoreMsg',
			\ 'direction': 'rightbelow',
      \ 'auto_highlight': v:true,
      \ })

let s:insert_mode_mappings = [
      \ ['<Up>','<denite:move_to_previous_line>', 'noremap'],
      \ ['<Down>', '<denite:move_to_next_line>', 'noremap'],
      \ ['jk', '<denite:enter_mode:normal>', 'noremap'],
      \ ['<C-j>', '<denite:move_to_next_line>', 'noremap'],
      \ ['<C-k>', '<denite:move_to_previous_line>', 'noremap'],
      \ ['<C-t>', '<denite:do_action:tabopen>', 'noremap'],
      \ ['<C-v>', '<denite:do_action:vsplit>', 'noremap'],
      \ ['<C-s>', '<denite:do_action:split>', 'noremap'],
      \ ['<C-N>', '<denite:assign_next_matched_text>', 'noremap'],
      \ ['<C-P>', '<denite:assign_previous_matched_text>', 'noremap'],
      \ ['<C-Y>', '<denite:redraw>', 'noremap'],
      \ ]

let s:normal_mode_mappings = [
      \ ['<Up>','<denite:move_to_previous_line>', 'noremap'],
      \ ['<Down>', '<denite:move_to_next_line>', 'noremap'],
      \ ["'", '<denite:toggle_select_down>', 'noremap'],
      \ ['<C-n>', '<denite:jump_to_next_source>', 'noremap'],
      \ ['<C-p>', '<denite:jump_to_previous_source>', 'noremap'],
      \ ['<C-j>', '<denite:move_to_next_line>', 'noremap'],
      \ ['<C-k>', '<denite:move_to_previous_line>', 'noremap'],
      \ ['gg', '<denite:move_to_first_line>', 'noremap'],
      \ ['<C-t>', '<denite:do_action:tabopen>', 'noremap'],
      \ ['<C-v>', '<denite:do_action:vsplit>', 'noremap'],
      \ ['<C-s>', '<denite:do_action:split>', 'noremap'],
      \ ['q', '<denite:quit>', 'noremap'],
      \ ['r', '<denite:redraw>', 'noremap'],
      \ ]

for s:m in s:insert_mode_mappings
  call denite#custom#map('insert', s:m[0], s:m[1], s:m[2])
endfor
for s:m in s:normal_mode_mappings
  call denite#custom#map('normal', s:m[0], s:m[1], s:m[2])
endfor

unlet s:m s:insert_mode_mappings s:normal_mode_mappings


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
nnoremap <silent> <leader>ls :Denite jump<cr>
nnoremap <silent> <leader>ct :Denite tag<cr>
nnoremap <silent> <leader>fb :Denite outline<cr>
nnoremap <Leader>fep :Denite file/rec:~/MEGA/code/dotfiles<CR>


nnoremap <Leader>es :Denite ale<cr>
nnoremap <Leader>fd :Denite directory_rec<cr>
nnoremap <silent> <leader>fc :Denite command<cr>
