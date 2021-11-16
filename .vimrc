" various settings
set nocompatible " force vim to use vim defautls over vi's
set number " show line numbers 
set relativenumber " highlight the used line number
set noswapfile " disable swapfile. 
set autoindent " minimal automatic indenting for any filetype
set errorbells " disable *errors*, like visual blinking, or beeping
set splitbelow splitright " splitting 
set backspace=indent,eol,start " proper backspace behaviour
set tw=80 " set textwidth to max 80.
set ruler " show line numbers at the bottom
set wildmenu " commandline completion. use tab to move around
set ignorecase " case insensitive searching. set noic to disable
set incsearch " show partial matches 
set tabstop=2 " set amount of spaces a tab is
set shiftwidth=4 " need to be set to same as tabstop
set expandtab  " convert tabs to spaces
syntax on " enable syntax highlighting
filetype plugin indent on " enable filetype-specific indenting

" Memap moving between splits to use ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Map resizing splits with keybindings with ctrl + shift + hjkl
noremap <silent> <C-H> :vertical resize -3 <CR> 
noremap <silent> <C-L> :vertical resize +3 <CR> 
noremap <silent> <C-J> :resize -3 <CR> 
noremap <silent> <C-K> :resize +3 <CR> 

" move horisontal splits to vertical splits, and vice versa with keybindings
nnoremap <M-H> <C-w>t<C-w>H
nnoremap <M-K> <C-w>t<C-w>K

" vim plugins
call plug#begin('/$HOME/.vim/autoload/plugged')

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Better Syntax Support
"	Plug 'sheerun/vim-polyglot'

call plug#end()


