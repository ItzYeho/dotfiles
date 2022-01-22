" Status bar customizations
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
let g:airline_section_z = '%l:%c'

" Color theme settings
let g:onedark_termcolors = 256
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1

" Deoplete settings
call deoplete#enable()

" ALE settings
let g:ale_fix_on_save = 1
let g:ale_fixers = {
			\ '*': ['remove_trailing_lines', 'trim_whitespace'],
			\ }

" Enable color theme
syntax on
colorscheme onedark

" Custom settings
set number
set autoindent
set smartindent
set tabstop=2
set nocompatible
