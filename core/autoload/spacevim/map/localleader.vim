let g:spacevim#map#localleader#desc = get(g:, 'g:spacevim#map#localleader#desc', {})

" editing layer
let g:spacevim#map#localleader#desc['f']={
  \ 'name'  : '+Fardo',
  \ 'd' : ['Farp','Far Input'],
  \}


" repl layer
let g:spacevim#map#localleader#desc['r']={
  \ 'name'  : '+Repl',
  \ 'o' : ['Tnew','Open Repl'],
  \ 'l' : ['Tclear!','Repl Clear'],
  \ 't' : ['Ttoggle','Repl Ttoggle'],
  \}

" fzf self layer
let g:spacevim#map#localleader#desc['j']={
  \ 'name'  : '+buffer',
  \}


" programming tools-better debugger layer
if spacevim#load('debugger')
  let g:spacevim#map#localleader#desc['d']={
    \ 'name'  : '+debug/linediff',
    \ 'c':['vimspector#Continue()','Vcontinue'],
    \ 's':['vimspector#Stop()','Vstop'],
    \ 'r':['vimspector#Restart()','Vrestart'],
    \ 'p':['vimspector#Pause()','Vpause'],
    \ 't':['vimspector#ToggleBreakpoint()','Vtogglebt'],
    \ 'e':['vimspector#RunToCursor()','Vruntocursor'],
    \ 'n':['vimspector#StepOver()','Vstepover'],
    \ 'i':['vimspector#StepInto()','Vstepinto'],
    \ 'k':['vimspector#StepOut()','Vstepout'],
    \ 'q':['vimspector#Reset()','Vreset'],
    \ 'l':['vimspector#ListBreakpoints()','Vlistbt'],
    \ 'w':['vimspector#ClearBreakpoints()','Vclearbt']
    \}
else
  let g:spacevim#map#localleader#desc['d']={
    \ 'name'  : '+debug/linediff',
    \}
endif



" .spacevim
let g:spacevim#map#localleader#desc['p']={
  \ 'name'  : '+upremoteplug/starttime',
  \}

" windows layer
let g:spacevim#map#localleader#desc['w']={
  \ 'name'  : '+windows/quickscope',
  \}

" coc layer
let g:spacevim#map#localleader#desc['c']={
  \ 'name'  : '+Coc/Codef/Surround',
  \ 'g':["CocAction('jumpDefinition', 'drop')","CocDDefine"],
  \ 'v':["CocAction('jumpDefinition', 'vsplit')",'CocVDefine'],
  \ 'n':['<Plug>(coc-rename)','CocRename'],
  \ 'f':['CocRnameCFile','CocRenameF'],
  \ 'e':["CoCExplore","CocFiles"],
  \ 'o':["CoCAddTemplateTop","CocATT"],
  \}

