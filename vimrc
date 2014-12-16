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
set smartcase " ... unless they contain at least one capital letter

set nu " Line numbers
set lbr " linebreak

" Spaces instead of tabs (for scala, ruby and clojure 2 is enought)
set shiftwidth=2
set tabstop=2
set expandtab
set nowrap

"Color setup"
set t_Co=16

syntax enable
set background=light
colorscheme solarized

" Key Mappings
let mapleader=","
map <C-n> :NERDTreeToggle<cr>
nmap <F9> :FixWhitespace<cr>
nmap <F7> :Eval<cr>
nmap <F8> :RunTests<cr>


" Easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
