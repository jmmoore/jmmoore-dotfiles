" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
 
" Execute Pathogen plugin manager
execute pathogen#infect()

" Show line numbers
set number
 
" Set colorscheme
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colorscheme hybrid

" Switch syntax highlighting on
syntax enable

" Import plugins here
filetype plugin indent on

" Setting tab spacing the way I want
set shiftwidth=4
set softtabstop=4
set expandtab

"UI related things
set showcmd
set wildmenu
set lazyredraw
set showmatch

"Word wrap things for text files
set wrap
set linebreak

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

" This forces files with the .md suffix to use the markdown syntax highlighting, not modula2
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Syntastic {{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_aggregate_errors = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
"}}

" Vimwiki {{
         let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'path_html': '~/Dropbox/vimwiki_html/', 'auto_export': '1'}]
"}}

" Go {{
    " Convenient mappings for all Go things
        au FileType go nmap <leader>r :GoRun!<CR>
        au FileType go nmap <leader>e <Plug>(go-rename)
        au FileType go nmap <leader>s <Plug>(go-implements)
        au FileType go nmap <leader>t :GoTest!<CR>
        au FileType go nmap <leader>c <Plug>(go-coverage)
        au FileType go nmap <leader>v <Plug>(go-vet)
        au FileType go nmap <leader>gd <Plug>(go-doc)
        au FileType go nmap <leader>d :GoDef<CR>
        au FileType go nmap <leader>D :GoDescribe<CR>

    " Use `goimports` instead of `gofmt`
        let g:go_fmt_command = "goimports"
    " Go syntastic stuff
        let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
        let g:syntastic_go_go_test_args="-tags=integration"
        let g:syntastic_go_go_build_args="-gcflags '-e'"
"}}

"Training myself out of the arrow keys
noremap <Up> <Esc>
noremap <Down> <Esc>
noremap <Left> <Esc>
noremap <Right> <Esc>
noremap <Space> :noh<CR>

imap <Up> <Esc>
imap <Down> <Esc>
imap <Left> <Esc>
imap <Right> <Esc>
