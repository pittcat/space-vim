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
        if stridx(bufname(i),'neoterm')<0
          silent execute 'bd! '.bufname(i)
        endif
      endif
  endfor
endfunction

nnoremap <silent> <F8> :call CleanVpectorEmptyTerminal()<cr>
nmap <F1> <Plug>VimspectorContinue
nmap <F2> <Plug>VimspectorStepOver
nmap <F3> <Plug>VimspectorStepInto
nmap <F4> <Plug>VimspectorStop
nmap <F5> <Plug>VimspectorRestart
nmap <F6> <Plug>VimspectorToggleBreakpoint
nmap <F7> <Plug>VimspectorStepOut
command! VimspectorBalloonEval call feedkeys("\<Plug>VimspectorBalloonEval")
xmap <Leader>de <Plug>VimspectorBalloonEval
command! VimspectorToggleConditionalBreakpoint call feedkeys("\<Plug>VimspectorToggleConditionalBreakpoint") 
command! VimspectorAddFunctionBreakpoint call feedkeys("\<Plug>VimspectorAddFunctionBreakpoint")
