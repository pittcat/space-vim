nnoremap <silent> <localleader>dg :call spacevim#plug#asyncrun#Gdb()<cr>
let g:nvimgdb_disable_start_keymaps=1
let g:nvimgdb_key_step='<A-n>'
let g:nvimgdb_key_breakpoint='<A-b>'


function! SpacevimGdbStart()
  let l:ft = &filetype
  if l:ft=='python'
    exec 'GdbStartPDB python -m pdb '.expand("%:p")
  elseif l:ft=='cpp'
    call spacevim#plug#asyncrun#Gdb()
    exec 'GdbStart gdb -q '.expand("%:p:h").'/exec/'.expand("%:t:r")
  elseif l:ft=='c'
    call spacevim#plug#asyncrun#Gdb()
    exec 'GdbStart gdb -q '.expand("%:p:h").'/exec/'.expand("%:t:r")
  else
    call spacevim#util#err("SpacevimGdbStart not supported in current filetype!")
  endif
endfunction
nnoremap <silent> <localleader>ds :call SpacevimGdbStart()<cr>
