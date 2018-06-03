" fix Ctrl arrow  tmux and vim --> https://stackoverflow.com/questions/15445481/mapping-arrow-keys-when-running-tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
    execute "set <xHome>=\e[1;*H"
    execute "set <xEnd>=\e[1;*F"
    set mouse=a
endif

let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
nnoremap <silent> <Leader>vr :call spacevim#plug#vimux#VimuxCompileRun()<cr>
nnoremap <silent> <Leader>vc :VimuxCloseRunner<cr>

