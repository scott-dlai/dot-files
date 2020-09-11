set nocompatible
filetype off

" Plugins
call plug#begin()
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" Utilities
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Ocaml
Plug 'ocaml/vim-ocaml'
" Themes
Plug 'dkasak/gruvbox'
Plug 'arcticicestudio/nord-vim'
" Status bar
Plug 'vim-airline/vim-airline'
call plug#end()

" Enables syntax highlighting
filetype plugin indent on
syntax on

" Themes and settings for status bar
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1

" Themes for editor
set bg=dark
" let g:gruvbox_contrast_dark='soft'
colorscheme nord

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
" Show trailing white space
set listchars=trail:~
set list
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

" Other
set hidden
set splitbelow splitright

" Ocaml language server configuration
" Ocaml/merlin setup
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" Intellisense
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
\   'ocaml':            ['ocamllsp'],
\}

" Remap keys
map <silent> <C-o> :NERDTreeToggle<CR>
map <C-\> <plug>NERDCommenterToggle
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

inoremap jj <Esc>

