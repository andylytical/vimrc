" filetype off
" call pathogen#runtime_append_all_bundles()
" filetype plugin indent on
" See more at: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set ts=4
set sw=4
set sts=4
set expandtab
set ai
set showmode
set showcmd
set nonu
set ruler
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set visualbell
set cursorline
set ttyfast
set laststatus=2
set relativenumber
set undofile
set wildmenu
set wildmode=list:longest

" Make regex behave better
nnoremap / /\v
vnoremap / /\v

" Deal intelligently with case when searching
set ignorecase
set smartcase

" Make substitutions global by default
" set gdefault
" Highlight search results incrementally
set incsearch
set showmatch
set hls

" Clear highlights by typing <backslash><space>
" note: default <leader> char is <backslash>
nnoremap <leader><space> :noh<cr>

" Make tab match bracket pairs (same as % does)
nnoremap <tab> %
vnoremap <tab> %

" Shortcut to create a line of ='s below the current line with same
" length of current line
nnoremap <leader>1 yypVr=

" Handle long lines correctly
set wrap
set tw=79
set formatoptions=qrn1
set colorcolumn=85

" Show non-printable chars
"set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:%
" set list (enable showing non-printable chars)
" set nolist (to disable)

" unmap F1 to avoid starting Vim help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set syntax=off
set background=dark
syntax on

" Settings for mutt
autocmd BufNewFile *mutt-* set fo=tcq tw=72
autocmd BufRead *mutt-* set fo=tcq tw=72

