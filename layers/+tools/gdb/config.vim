nnoremap <silent> <localleader>dg :call spacevim#plug#asyncrun#Gdb()<cr>
let g:nvimgdb_disable_start_keymaps=1
let g:nvimgdb_key_step='<A-n>'
let g:nvimgdb_key_breakpoint='<A-b>'


function! SpacevimGdbStart()
  let l:ft = &filetype
  if l:ft=='python'
    exec 'GdbStartPDB python -m pdb '.expand("%:p")
  else
    call spacevim#util#err("SpacevimGdbStart not supported in current filetype!")
  endif
endfunction
nnoremap <silent> <localleader>ds :call SpacevimGdbStart()<cr>
