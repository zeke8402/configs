" Set up VimPlug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

""" Look & Feel """
set background=dark
colorscheme shblah
"colorscheme onedark
highlight Comment cterm=italic

""" Preferences """
syntax on
set nowrap          "Do not wrap lines"
set autoindent
set ignorecase      "Ignore case when searching"
set number          "Show lines numbers"
set cursorline      "Highlight Cursor Line"

" Indents are 4 spaces characters but entered with tab key
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

""" Escape Normal Mode """
imap jj <esc>

""" Search Preferences """
set incsearch       "Search as characters are entered"
set hlsearch        "Highlight search matches"

""" Leader Key """
let mapleader = "\<Space>"

""" Move by Visual Line"""
nnoremap j gj
nnoremap k gk

""" NERDTree """
let NERDTreeShowHidden=1
nmap <C-k> :NERDTreeToggle<cr>
