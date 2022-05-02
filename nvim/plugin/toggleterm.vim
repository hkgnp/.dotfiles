let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'vertical'

set nocompatible
filetype off

let &runtimepath.=',~/.vim/plugged/neoterm'
filetype plugin on

nnoremap <C-n> :Ttoggle<CR>
tnoremap <C-n> <C-\><C-n>:Ttoggle<CR>:call DWM_Rotate(0)<CR>:call DWM_Rotate(1)<CR>
