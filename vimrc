"let up Plug"
set nocompatible
filetype off

call plug#begin("~/.config/nvim/plugged")

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'sheerun/vim-polyglot'
Plug 'neomake/neomake'

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

syntax enable
set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Vim airline theme
set t_Co=256
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

" Key Mappings
let mapleader="<space>"
let maplocalleader=","
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <F5> :Autoformat<cr>

" Easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Clojure setup
let g:rbpt_max = 16
let g:paredit_mode=1

" Scalafmt setup
let g:formatdef_scalafmt = "'scalafmt'"
let g:formatters_scala = ['scalafmt']

" Neomake
autocmd! BufWritePost * Neomake
