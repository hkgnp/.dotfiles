" Set map leader to space
let mapleader = " "
set showcmd

au CursorHold,CursorHoldI * checktime

" From the Primeagen
set exrc
set noshowmode
set number relativenumber
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
set nowritebackup
set undodir =~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=12
set completeopt=menu,menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set equalalways
set autoread
" Combines vim and system clipboard
set clipboard+=unnamedplus

" Give more space for displaying messages:
set cmdheight=2

" Shorten update time
set updatetime=300
set shortmess+=c

" insert plugins
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'tami5/sqlite.lua'
Plug 'sainnhe/gruvbox-material', {'as':'gruvbox'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'rebelot/kanagawa.nvim'
Plug 'beikome/cosme.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
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
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
call plug#end()

" DWM
let g:dwm_map_keys = 0
let g:dwm_master_pane_width = 110

let g:vsnip_snippet_dir = expand('~/.config/vsnip')

" Source vim
nnoremap <leader>rr :so ~/.config/nvim/init.vim<CR>

" Save
nnoremap ;; :wall<CR>:e<CR>:lua vim.lsp.buf.formatting()<CR>

" Move to beginning/end of line without taking my fingers off of home row:
nnoremap H ^
nnoremap L $

" Quit
nnoremap <leader>q :q<CR>:call DWM_Rotate(0)<CR>:call DWM_Rotate(1)<CR>
nnoremap <leader><S-q> :qall<CR>

" Replaces word under the cursor. First, change the word, then just press '.' to change subsequent words
nnoremap <leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn

" Change x so it doesn't save deleted character to the history
nnoremap x "_dl

" Find and replace text in visual mode
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

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
nnoremap <leader><S-b> :Ttoggle<CR>rmd<CR><C-\><C-n>:Ttoggle<CR>:call DWM_Rotate(0)<CR>:call DWM_Rotate(1)<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fw <cmd>Telescope grep_string<CR>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>vrc <cmd>lua require('telescope.builtin').find_files({prompt_title="< VimRC >", cwd="~/.config/nvim"})<cr>
nnoremap <leader>vcp <cmd>lua require('telescope.builtin').find_files({prompt_title="< Code Projects >", cwd="~/Code_Projects"})<cr>
