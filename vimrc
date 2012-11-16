"Set up Pathogen"
call pathogen#infect()

" Switch filetype detection on
filetype indent on
filetype on
filetype plugin indent on

"Classic Vim setup"
set autoindent
set smartindent

" Some useful settings
set cmdheight=2 "command bar is 2 high"
set backspace=indent,eol,start
set hlsearch "highlight search
set incsearch " search incrementally
set ignorecase " search ignoring case

set nu " Line numbers
set lbr " linebreak

" Spaces instead of tabs (for scala and clojure 2 is enought)
set shiftwidth=2
set tabstop=2
set expandtab

"Color setup"
set t_Co=16

syntax enable
set background=light
colorscheme solarized

"Clojure specific settings"
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
