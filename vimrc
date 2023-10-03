""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Todd's .vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on				  " Enable syntax highlighting
set number relativenumber " Sliding line numbers
colorscheme todd	 	  " Color theme
set nu rnu				  " Hybrid line numbers
set tabstop=4             " 4 column tabs
set shiftwidth=4 		  " 4 column tabs
set cindent				  " Auto-indent
set foldmethod=marker	  " Fold code with {{{ and }}}
set mouse=a				  " Enable mouse interaction
set colorcolumn=80		  " Show column guide
set nocompatible 		  " The set nocompatible makes vim behave in a
						  " more useful way (the default) than the
						  " vi-compatible manner.
set belloff=all			  " Ignore bell noises
set clipboard=unnamed     " Use the 'unnamed' register, which is linked
						  " to the system clipboards
let mapleader="\<Space>"  " Set custom leader

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Comment Header Block ↓
nnoremap <C-b> ^:center 80<cr>hhv0r/A<space><esc>40A/<esc>d80<bar>YppVr/kk.
nnoremap <C-n> ^10i/<esc>a<space><esc>A<space><esc>10A/<esc>YppVr/kk.

" Open/close folds
nnoremap <leader>[ O// {{{<esc>
nnoremap <leader>] o// }}}<esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Change Cursor when in Insert mode ↓
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Installed using built in manager
"
" SYNTAX
"
" https://github.com/sheerun/vim-polyglot
" ~/.vim/pack/syntax/start/vim-polyglot
"
" COMMENTS 
"
" https://github.com/tpope/vim-commentary
" ~/.vim/pack/plugins/start/comentary
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
