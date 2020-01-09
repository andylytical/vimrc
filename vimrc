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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" Use :PlugInstall to install plugins

" Select Vim-Airline-Theme to use
let g:airline_theme='solarized'


" Many settings below borrowed from
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set showcmd
set showmatch
set showmode
set ttyfast
set visualbell
set wildmode=list:longest,full

" Tab / Shift related
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Deal intelligently with case when searching
set ignorecase
set smartcase

" Handle long lines correctly
set wrap
set tw=79
set formatoptions=qrn1
set colorcolumn=85

" see also http://vim.wikia.com/wiki/Highlight_current_line
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

" Highlight search matches
set hls
" Clear highlights by typing <backslash><space>
" note: default <leader> char is <backslash>
nnoremap <leader><space> :noh<cr>

" Shortcut to create a line of ='s below the current line with same
" length of current line
nnoremap <leader>1 yypVr=

" Create pydoc template
nnoremap <leader>d yyp>>I""" <ESC>o"""<ESC>

" What to show for non-printable chars 
" The plugin "vim-sensible" also sets this, but this one is better
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:%
" set list (enable showing non-printable chars)
" set nolist (to disable)

" this used to be up top, but something overrides it or turns it off
" set showcmd

" vim:set ft=vim et sw=2:
