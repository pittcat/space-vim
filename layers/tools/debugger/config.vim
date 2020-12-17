let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
function VimspertorDrop() abort
  let l:win_lst = getwininfo()
  let l:vimspector_inside_state=0 " judge whether in vimspector buffers
  let l:vimspector_win_lst=['vimspector.Variables','vimspector.Watches','vimspector.StackTrace','vimspector.Console']
  for i in l:win_lst
    let l:bufname_v=bufname(get(i,'bufnr',0))
    if index(l:vimspector_win_lst,l:bufname_v)>0
      let l:vimspector_inside_state = 1
      break
    endif
  endfor
  for i in l:win_lst
    if l:vimspector_inside_state!=#1
      echo "Out of vimspector"
      break
    endif
    if get(i,'terminal',0)
      let l:buf_name=get(get(i,'variables',0),'netrw_prvfile',0)
        if jobwait([getbufvar(l:buf_name, '&channel')], 0)[0]==#-3 " check terminal job state
          exec 'bdelete! '.l:buf_name
          call vimspector#Reset()
        else
          let l:choice=confirm("VimspectorDrop from job running", "&Yes\n&No", 1)
          if l:choice
           silent exec 'bdelete! '.l:buf_name
            call vimspector#Reset()
          endif
        endif
    endif
  endfor
endfunction
