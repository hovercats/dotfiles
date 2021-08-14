set number relativenumber noswapfile smartindent sc hid ru ai wmnu noeb nosol 
set nocp digraph ek splitbelow splitright
set ww=<,>,h,l com=b:#,:%,n:>
syntax on
set backspace=indent,eol,start
set tw=80 bs=2 ts=4 sw=4 sts=4 shm=at sw=4 fo=cqrt
set lcs=tab:»·  lcs+=trail:·   


" vim plugins
call plug#begin('~/.vim/autoload/plugged')

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'	
	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'

call plug#end()
