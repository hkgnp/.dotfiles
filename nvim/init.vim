" Set map leader
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
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'sainnhe/gruvbox-material', {'as':'gruvbox'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kassio/neoterm' " aka plugin/toggleterm
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'yaegassy/coc-tailwindcss',  {'do': 'npm install && npm run build', 'branch': 'feat/support-v3-and-use-server-pkg'}
call plug#end()

"  airline theme
let g:airline_theme='molokai'

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Color schemes
if has('termguicolors')
    set termguicolors
endif        
set background=dark
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

" Source vim
nnoremap <leader>rr :so ~/.config/nvim/init.vim<CR>

" telescope
nnoremap <leader>p <cmd>Telescope find_files<cr>

" Save
nnoremap ;; :wall<CR>

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

" Trying build
nnoremap <leader><S-b> :Ttoggle<CR>:sleep 2<CR>rmd<CR><C-\><C-n>:Ttoggle<CR>

" Trying snippet
iabbrev clog console.log()<Esc>ha
iabbrev =() =()=>{}<esc>ha

" Resize the current split to at least (90,25) but no more than (140,60)
" or 2/3 of the available space otherwise.
function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), 90])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 140]))
    exe "resize" . (min([vmax, 60]))
endfunction

" Move to pane
nnoremap <C-h> <C-w>h:call Splitresize()<CR>
nnoremap <C-l> <C-w>l:call Splitresize()<CR>
nnoremap <C-j> <C-w>j:call Splitresize()<CR>
nnoremap <C-k> <C-w>k:call Splitresize()<CR>

