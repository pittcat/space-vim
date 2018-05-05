call leaderGuide#register_prefix_descriptions("<Space>", "g:spacevim#plug#leaderGuide#lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

let g:llmap = {}
call leaderGuide#register_prefix_descriptions(",", "g:llmap")
nnoremap <localleader> :<c-u>LeaderGuide  ','<CR>
vnoremap <localleader> :<c-u>LeaderGuideVisual  ','<CR>
