" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
 
" Show line numbers
set number
 
" Set colorscheme
set background=dark
colorscheme idleFingers

" Switch syntax highlighting on
syntax enable

" Setting tab spacing the way I want
set shiftwidth=4
set softtabstop=4
set expandtab

"UI related things
set showcmd
filetype indent on
set wildmenu
set lazyredraw
set showmatch

"Search related things
set incsearch
set hlsearch

"Training myself out of the arrow keys
noremap <Up> <Esc>
noremap <Down> <Esc>
noremap <Left> <Esc>
noremap <Right> <Esc>

imap <Up> <Esc>
imap <Down> <Esc>
imap <Left> <Esc>
imap <Right> <Esc>
