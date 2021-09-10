" minor settings
set number " show line numbers 
set relativenumber " highlight the used line number
set noswapfile " disable swapfile. 
set autoindent " minimal automatic indenting for any filetype
set errorbells " disable *errors*, like visual blinking, or beeping
set splitbelow splitright " splitting 
syntax on
set backspace=indent,eol,start " proper backspace behaviour
set tw=80 " set textwidth to max 80.
set ruler " show line numbers at the bottom
set wildmenu " commandline completion. use tab to move around

" vim plugins
call plug#begin('/$HOME/.vim/autoload/plugged')

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'

call plug#end()


