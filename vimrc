" Manage plugins using vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-commentary'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Use :PlugInstall to install plugins


" See more at: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set ts=4
set sw=4
set sts=4
set expandtab
set showmode
set nonu
set nocompatible
set modelines=0
set visualbell
set ttyfast
set wildmode=list:longest

" see also http://vim.wikia.com/wiki/Highlight_current_line
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorline
" toggle cursorline cursorcolumn
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" toggle relativenumber
set relativenumber
:nnoremap <Leader>n :set relativenumber!<CR>

" Make regex behave better
nnoremap / /\v
vnoremap / /\v

" Deal intelligently with case when searching
set ignorecase
set smartcase

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

" Create pydoc template
nnoremap <leader>d yyp>>I""" <ESC>o"""<ESC>

" Handle long lines correctly
set wrap
set tw=79
set formatoptions=qrn1
set colorcolumn=85

" Show non-printable chars ... plugin vim-sensible also sets this ... see it it's ok
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:%
" set list (enable showing non-printable chars)
" set nolist (to disable)

" unmap F1 to avoid starting Vim help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set syntax=off
set background=dark
syntax on

" this used to be up top, but something overrides it or turns it off
set showcmd

" vim:set ft=vim et sw=2:
