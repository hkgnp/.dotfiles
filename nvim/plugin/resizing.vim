" Resizing
noremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>== <C-w>=<CR>

" Move to pane
" nnoremap <C-h> <C-w>h:call Splitresize()<CR>^
" nnoremap <C-l> <C-w>l:call Splitresize()<CR>^
nnoremap <C-j> <C-w>j:call Splitresize()<CR>^
nnoremap <C-k> <C-w>k:call Splitresize()<CR>^

nnoremap <silent> <C-h> :call DWM_Rotate(0)<CR>
nnoremap <silent> <C-l> :call DWM_Rotate(1)<CR>
" nnoremap <silent> <C-h> <C-w>W
" nnoremap <silent> <C-l> <C-w>w
" nnoremap <silent> <C-f> :call DWM_Focus()<CR>" 

" Function to resize panes if not using dwm
" Resize the current split to at least (90,25) but no more than (140,60)
" or 2/3 of the available space otherwise.
" function Splitresize()
"     let hmax = max([winwidth(20), float2nr(&columns*0.66), 90])
"     let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
"     exe "vertical resize" . (min([hmax, 140]))
"     exe "resize" . (min([vmax, 60]))
" endfunction

