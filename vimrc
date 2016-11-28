"Set up Vundle"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Chiel92/vim-autoformat'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'guns/vim-clojure-static'
Plugin 'altercation/vim-colors-solarized'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'lambdatoast/elm.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'neomake/neomake'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

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
set lbr " linebreak

" Spaces instead of tabs (for scala, ruby and clojure 2 is enough)
set shiftwidth=2
set tabstop=2
set expandtab
set nowrap

syntax enable
set background=dark
colorscheme solarized

" Vim airline theme
set t_Co=256
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'

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
