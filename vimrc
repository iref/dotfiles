"Set up Pathogen"
call pathogen#infect()

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

" Spaces instead of tabs (for scala, ruby and clojure 2 is enought)
set shiftwidth=2
set tabstop=2
set expandtab
set nowrap

syntax enable
set background=dark
colorscheme solarized 

" Key Mappings
let mapleader=","
map <C-n> :NERDTreeToggle<cr>
nmap <F9> :FixWhitespace<cr>
nmap <F7> :Eval<cr>
nmap <F8> :RunTests<cr>


" Easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Clojure setup
let g:rbpt_max = 16
let g:paredit_mode=1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
