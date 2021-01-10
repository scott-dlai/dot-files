" Plugins
call plug#begin()
" Utilities
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Language support
Plug 'ocaml/vim-ocaml'
Plug 'elixir-editors/vim-elixir'
" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'arcticicestudio/nord-vim'
" Status bar
Plug 'vim-airline/vim-airline'
call plug#end()

set undodir=~/.cache/vim-undodir/
set undofile

" Enables syntax highlighting
filetype plugin indent on
syntax on

" Themes and settings for status bar
set noshowmode
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline#extensions#tabline#enabled=1

" Themes for editor
set bg=dark
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

" Whitespace setting
set nowrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set colorcolumn=80
set cursorline
" Show trailing white space
set listchars=tab:\|\ ,trail:~
set list
" Show line number
set number relativenumber
" Mouse support
set mouse=a
" Set the height of the command window.
set cmdheight=2
" Italicize comments
highlight Comment cterm=italic gui=italic
" Adds space to the left of comments
let g:NERDSpaceDelims = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Close NERDTree when open a file
let NERDTreeQuitOnOpen=1

" Other
set hidden
set splitbelow splitright
au TermOpen * setlocal nonumber norelativenumber

" Ocaml language server configuration
" Ocaml/merlin setup
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
au Filetype ocaml let b:AutoPairs={'(':')', '[':']', '{':'}','"':'"', '(*':'*)'}

" Golang
let g:go_doc_keywordprg_enabled = 0

" File that use 2 spaces for tab
autocmd FileType ocaml,json set tabstop=2|set shiftwidth=2

" toggle terminal
source $HOME/.config/nvim/toggle_terminal.vim

" remap keys
source $HOME/.config/nvim/remap_key.vim

" Coc configuration
source $HOME/.config/nvim/coc-config.vim

" Remap keys for plugins
let g:AutoPairsShortcutToggle = ''
autocmd FileType go map gk <Plug>(go-doc)
map <M-Tab> :NERDTreeToggle<CR>
map \\ <plug>NERDCommenterToggle
nmap <C-Space> :Buffers<CR>
nmap <M-p> :Files<CR>
nmap <M-f> :BLines<CR>
