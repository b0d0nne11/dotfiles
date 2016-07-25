""" Setup Plugins

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Jellybeans
syntax enable
colorscheme jellybeans

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" General Options

" tab = 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" dont wrap text
set nowrap

" ignore case when searching
set ignorecase
set smartcase

" set encoding
set encoding=utf-8

" <enter> adds a newline without entering insert mode
nnoremap <CR> o<Esc>

" ; is easier to type than :
nnoremap ; :

" jk is easier to type than <Esc>
inoremap jk <Esc>

" open new splits below or to the right
set splitbelow
set splitright

" make splits easier to work with
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" disable the arrow keys forever
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
nnoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>

" highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()