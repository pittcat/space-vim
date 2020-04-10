" init fzf window function
function! Create_Centered_Cloating_Window() abort
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = '╭' . repeat('─', width - 2) . '╮'
    let mid = '│' . repeat(' ', width - 2) . '│'
    let bot = '╰' . repeat('─', width - 2) . '╯'
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:b_buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:b_buf, 0, -1, v:true, lines)
    call nvim_open_win(s:b_buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    let s:f_buf = nvim_create_buf(v:false, v:true)
    call nvim_open_win(s:f_buf, v:true, opts)
    setlocal nocursorcolumn
    augroup fzf_preview_floating_window
      autocmd WinLeave <buffer> silent! execute 'bwipeout! ' . s:f_buf . ' ' . s:b_buf
    augroup END
endfunction


" Only suitable for space-vim-dark theme, other themes are not guaranteed.
let g:spacevim#plug#fzf#colors = {
\   'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


let g:spacevim#plug#fzf#fzf_history_dir = '~/.local/share/fzf-history'

function! spacevim#plug#fzf#Session()
  call fzf#run({
  \ 'source':  'ls -1 ~/.vim/session',
  \ 'sink':    'SLoad',
  \ 'options': '+m --prompt="Sessions> "',
  \ 'down':    '40%'
  \})
endfunction

if g:spacevim.nvim
  autocmd! FileType fzf tnoremap  <Esc> <Esc>
endif

if exists('*nvim_open_win')
  let $FZF_DEFAULT_OPTS = '--layout=reverse'
  let g:fzf_layout = {'window':'call Create_Centered_Cloating_Window()'}
endif


" ------------------------------------------------------------------
" Search word under cursor with ag
" ------------------------------------------------------------------


command! FPRG exec 'FzfPreviewProjectGrep ' . expand("<cword>")


" yuki-ycino/fzf-preview.vim
let g:fzf_preview_command = 'bat --color=always --style=grid {-1}'
let g:fzf_preview_directory_files_command = 'rg --files --follow --no-messages -g \!"* *"'
