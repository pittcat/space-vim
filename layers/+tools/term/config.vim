augroup terminal_settings
  autocmd!
  autocmd TermClose term://*
        \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
        \   call nvim_input('<CR>')  |
        \ endif
augroup END

tnoremap <silent> <C-[><C-[> <C-\><C-n>
nnoremap <silent> <Leader>' :Deol<CR>


function! s:openvterm()
  let cwd=fnamemodify(expand('%'), ':h')
  execute 'Deol' '-cwd='.cwd '-split=vertical'
endfunction
command! -bang OVterm call s:openvterm()
nnoremap <silent> <Leader>v' :OVterm<cr>
