" pSet map leader
let mapleader = " "
set showcmd

" From the Primeagen
set exrc
set noshowmode
set relativenumber
set nu
set nohlsearch
set hidden 
set errorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir =~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=12
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set equalalways

" Give more space for displaying messages:
set cmdheight=2

" Shorten update time
set updatetime=50
set shortmess+=c

" insert plugins
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'sainnhe/gruvbox-material', {'as':'gruvbox'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'
Plug 'tpope/vim-fugitive'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kassio/neoterm' " aka plugin/toggleterm
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'yaegassy/coc-tailwindcss',  {'do': 'npm install && npm run build', 'branch': 'feat/support-v3-and-use-server-pkg'}
Plug 'neoclide/npm.nvim', {'do' : 'npm install'}
Plug 'spolu/dwm.vim'
call plug#end()

let g:dwm_map_keys = 0
let g:dwm_master_pane_width = 120

" Color schemes for gruvbox
if has('termguicolors')
    set termguicolors
endif        

set background=dark
let g:gruvbox_material_palette = "mix"
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_ui_contrast = 1
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_virtual_text = 1

" Set color scheme
colorscheme gruvbox-material

" Source vim
nnoremap <leader>rr :so ~/.config/nvim/init.vim<CR>

" Save
nnoremap ;; :wall<CR>:edit<CR>

" Jump out of paranthesis
inoremap <S-Tab> <esc>la

" Move to beginning/end of line without taking my fingers off of home row:
nnoremap H ^
nnoremap L $

" Quit
nnoremap <leader>q :q<CR>
nnoremap <leader><S-q> :qall<CR>

" Replaces word under the cursor. First, change the word, then just press '.'
" to change subsequent words
nnoremap <leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn

noremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>== <C-w>=<CR>

" New empty pane
nnoremap <leader>v :vnew<CR>

" Make Y behave like D or C
nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv 
nnoremap J mzJ`z

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" Logseq build
nnoremap <leader><S-b> :Ttoggle<CR>rmd<CR><C-\><C-n>:Ttoggle<CR>

" Trying snippet
iabbrev clog console.log()<Esc>ha
iabbrev =() =()=>{}<esc>ha<CR>

" Resize the current split to at least (90,25) but no more than (140,60)
" or 2/3 of the available space otherwise.
function Splitresize()
    let hmax = max([winwidth(20), float2nr(&columns*0.66), 90])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 140]))
    exe "resize" . (min([vmax, 60]))
endfunction

" Move to pane
" nnoremap <C-h> <C-w>h:call Splitresize()<CR>^
" nnoremap <C-l> <C-w>l:call Splitresize()<CR>^
nnoremap <C-j> <C-w>j:call Splitresize()<CR>^
nnoremap <C-k> <C-w>k:call Splitresize()<CR>^

nnoremap <silent> <C-h> :call DWM_Rotate(0)<CR>
nnoremap <silent> <C-l> :call DWM_Rotate(1)<CR>

nnoremap <silent> <C-f> :call DWM_Focus()<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <leader>vrc <cmd>lua require('telescope.builtin').find_files({prompt_title="< VimRC >", cwd="~/.config/nvim"})<cr>
nnoremap <leader>vcp <cmd>lua require('telescope.builtin').find_files({prompt_title="< Code Projects >", cwd="~/Code Projects"})<cr>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
 
nnoremap x "_dl
