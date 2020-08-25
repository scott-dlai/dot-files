set nocompatible
filetype off

" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" Utilities
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
" Haskell
Plug 'dense-analysis/ale'
Plug 'neovimhaskell/haskell-vim'
" Ocaml
Plug 'ocaml/vim-ocaml'
" Themes
Plug 'dkasak/gruvbox'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'joshdick/onedark.vim'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Enables syntax highlighting
filetype plugin indent on
syntax on

" Themes and settings for status bar
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1

" Themes for editor
set bg=dark
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox

" Show hidden files for NERDTREE
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$']

" Whitespace setting
set wrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set colorcolumn=80
set cursorline
" Show line number
set number
set relativenumber
" Mouse support
set mouse=a
" Set the height of the command window.
set cmdheight=2
" Italicize comments
highlight Comment cterm=italic gui=italic
" Adds space to the left of comments
let g:NERDSpaceDelims = 1

set hidden

" Ocaml language server configuration
" Ocaml/merlin setup
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" Haskell set up
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" Intellisense
let g:LanguageClient_serverCommands = {
\   'ocaml':            ['ocamllsp'],
\   'haskell':          ['haskell-language-server-wrapper', '--lsp']
\}

" Remap keys
map <C-o> :NERDTreeToggle<CR>
map <C-\> <plug>NERDCommenterToggle
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

