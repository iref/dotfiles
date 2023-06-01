set nocompatible
filetype off

call plug#begin("~/.config/nvim/plugged")

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'haishanh/night-owl.vim'
Plug 'sheerun/vim-polyglot'

Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'

call plug#end()

" Switch filetype detection on
filetype indent on
filetype on
filetype plugin indent on


" Some useful settings
set cmdheight=2 "command bar is 2 high"
set hlsearch "highlight search
set incsearch " search incrementally
set ignorecase " search ignoring case
set smartcase " ... unless they contain at least one capital letter

set nu " Line numbers
set relativenumber "Relative line numbers from current line
set lbr " linebreak

" Spaces instead of tabs (for scala, ruby and clojure 2 is enough)
set shiftwidth=2
set tabstop=2
set expandtab
set nowrap

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme night-owl

" Key Mappings
let mapleader="<space>"
let maplocalleader=","
nnoremap <F5> :Autoformat<cr>

" Easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
