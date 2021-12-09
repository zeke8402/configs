" Set up VimPlug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'posva/vim-vue'
Plug 'w0rp/ale'
Plug 'junegunn/goyo.vim'
Plug 'mboughaba/i3config.vim'
call plug#end()

""" Look & Feel """
set background=dark
let g:onedark_termcolors=16
colorscheme onedark
highlight Comment cterm=italic
"hi NonText ctermfg=fg

""" Preferences """
syntax on
"set nowrap          "Do not wrap lines"
set autoindent
set ignorecase      "Ignore case when searching"
set number          "Show lines numbers"
set cursorline      "Highlight Cursor Line"
set clipboard=unnamed

" Indents are 4 spaces characters but entered with tab key
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

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

""" Experimental Features """
"hi StatusLine ctermfg=bg ctermbg=bg

""" NERDTree """
let NERDTreeShowHidden=1
nmap <C-k> :NERDTreeToggle<cr>
