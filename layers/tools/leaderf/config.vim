" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1

" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewPopupWidth = 15
let g:Lf_PopupPreviewPosition='top'
let g:Lf_PopupPosition = [16,0]
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {
        \ 'File': 0,
        \ 'Buffer': 0,
        \ 'Mru': 1,
        \ 'Tag': 1,
        \ 'BufTag': 1,
        \ 'Function': 1,
        \ 'Line': 0,
        \ 'Colorscheme': 1,
        \ 'Rg': 1,
        \ 'Gtags': 1
        \}

let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_ShortcutB = "<leader>bb"
noremap <leader>fm :Leaderf mru<CR>
noremap <leader>bt :Leaderf bufTag<CR>
noremap <leader>ls :Leaderf line<CR>
noremap <leader>fu :Leaderf function<CR>
noremap <leader>fl :Leaderf self<CR>
noremap <leader>w? :Leaderf window<CR>
noremap <leader>ct :Leaderf tag<CR>

noremap <leader>rc :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <leader>rg :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap <leader>rg :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap <leader>rr :<C-U>Leaderf! rg --recall<CR>

" gtags
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>gt :Leaderf gtags<CR>

" remap
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}

let g:Lf_StlPalette = {}
