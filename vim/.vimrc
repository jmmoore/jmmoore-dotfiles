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

" Set statusbar stuff - stolen from jcbwlkr
set laststatus=2            "Always show status line
set statusline=%f           "Show path to file
set statusline+=%<          "Truncate if status line too long
set statusline+=\ %y        "File type, e.g. [python]
set statusline+=%r          "[RO] if file is read only
set statusline+=%m          "[+] if file is modified
set statusline+=%=          "Switch to right side
set statusline+=%p%%q       "Show percentage through file
set statusline+=\ %l,%c     "Line and column numbers

set showmode                "Show current mode below status bar (when not in normal mode)

"Training myself out of the arrow keys
noremap <Up> <Esc>
noremap <Down> <Esc>
noremap <Left> <Esc>
noremap <Right> <Esc>

imap <Up> <Esc>
imap <Down> <Esc>
imap <Left> <Esc>
imap <Right> <Esc>
