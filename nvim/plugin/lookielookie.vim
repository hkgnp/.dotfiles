" Set colorizer
lua require'colorizer'.setup()

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
