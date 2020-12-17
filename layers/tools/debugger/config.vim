let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
function VimspertorDrop() abort
  if exists("g:vimspector_session_windows") " judge whether in vimspector buffers
    call CleanVpectorEmptyTerminal()
    call vimspector#Reset()
  else
    echo "Out of Vimspector"
  endif
endfunction

function CleanVpectorEmptyTerminal() abort
  for i in filter(range(1, bufnr('$')), 'buflisted(v:val)')
      if getbufvar(i, '&buftype', '')==#'terminal'
      " if (jobwait([getbufvar(bufname(i), '&channel')], 0)[0]==#-3) && getbufvar(i, '&buftype', '')==#'terminal'
        silent execute 'bd! '.bufname(i)
      endif
  endfor
endfunction

nnoremap <silent> <F7> :call CleanVpectorEmptyTerminal()<cr>
