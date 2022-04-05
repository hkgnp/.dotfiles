" airline theme
let g:airline_theme='molokai'

" airline clock
let g:airline#extensions#clock#auto = 0
function! AirlineInit()
  let g:airline_section_b = airline#section#create(['clock', g:airline_symbols.space, g:airline_section_b])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
let g:airline#extensions#clock#updatetime = 1000
let g:airline#extensions#clock#format = '%H:%M:%S'

