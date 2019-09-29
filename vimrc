"let up Vundle"
set nocompatible
filetype off

call plug#begin("~/.config/nvim/plugged")

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fireplace'

Plug 'guns/vim-sexp'

Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'

Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'

Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'w0rp/ale'

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

" Vim ale linters setup
" let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 0

" let b:ale_linters = { 'javascript': ['eslint', 'flow'] }

" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
" let g:ale_sign_error = 'X'
" let g:ale_sign_warning = '?'
" let g:ale_statusline_format = ['X %d', '? %d', '']
" let g:ale_echo_msg_format = '%linter% says %s'

nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
