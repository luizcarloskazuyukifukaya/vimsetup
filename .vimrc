" --------------------------------------------------------------------------------------------------------
" Reference URL
" https://gist.githubusercontent.com/simonista/8703722/raw/d08f2b4dc10452b97d3ca15386e9eed457a53c61/.vimrc
" --------------------------------------------------------------------------------------------------------
" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
"filetype off

" DONE: vim 8+ package installed
" https://github.com/preservim/nerdtree
"Plugin 'scrooloose/nerdTree' "Documents tree 
" https://github.com/tpope/vim-fugitive
"Plugin 'tpope/vim-fugitive' "git integration 

" DONE: Pathogen installed
" https://riptutorial.com/vim/example/13780/pathogen
" enable vim-pathogen
" runtime bundle/vim-pathogen/autoload/pathogen.vim
" Landscape colorscheme
" https://vimawesome.com/plugin/landscape-vim

" TODO: Load plugins here (pathogen or vundle)
"Plugin 'scrooloose/syntastic' "code syntaxis 
"Plugin 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis... 
"Plugin 'yggdroot/indentline' "Show indent lines (useful for loops) 
"Plugin 'vim-airline/vim-airline' 
"Plugin 'vim-airline/vim-airline-themes' 
"Plugin 'ctrlpvim/ctrlp.vim' "Finder for vim 
" https://github.com/ervandew/supertab
"Plugin 'ervandew/supertab' "<Tab> for code completion 

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

"execute pathogen#infect()

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
set cursorline                  " line indicator
set cursorcolumn                " column indicator

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" ================ Color Scheme ========================
" Color scheme (terminal)
"set t_Co=256
set background=dark
"set background=light

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
" HOW TO INSTALL THE COLORSCHEME
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" git clone https://github.com/altercation/solarized.git
" in ~/.vim/colors/ and uncomment:
" cp solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors
"colorscheme solarized



"-------------------------------------------------------
"[Best for macbook]
"colorscheme murphy
"colorscheme pablo
"-------------------------------------------------------
"[Best for CloudTop]
"colorscheme koehler
"colorscheme elflord
"colorscheme koehler "Not good for Windows"
"-------------------------------------------------------
"[Best for Windows/Lenovo X13]
"colorscheme blue
"colorscheme murphy
" https://gist.github.com/Fendo181/1bdac7bb98cb87c1feef700dbdcdd22e
colorscheme molokai
"-------------------------------------------------------

" YAML tab settings
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" Relative Number
set number relativenumber

set autoindent

