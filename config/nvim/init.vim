" Plugins
call plug#begin()
" Utilities
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Ocaml
Plug 'ocaml/vim-ocaml'
" Themes
Plug 'scott-dlai/gruvbox'
Plug 'arcticicestudio/nord-vim'
" Status bar
Plug 'vim-airline/vim-airline'
call plug#end()

" Enables syntax highlighting
filetype plugin indent on
syntax on

" Themes and settings for status bar
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1

" Themes for editor
set bg=dark
let g:gruvbox_contrast_dark='soft'
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

" Other
set hidden
set splitbelow splitright
au TermOpen * setlocal nonumber norelativenumber

" Ocaml language server configuration
" Ocaml/merlin setup
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
autocmd FileType ocaml set tabstop=2|set shiftwidth=2
au FileType ocaml let b:AutoPairs = AutoPairsDefine({'(*' : '*)'})

" Intellisense
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
\   'ocaml':            ['ocamllsp'],
\}

" toggle terminal
source $HOME/.config/nvim/toggle_terminal.vim

" remap keys
source $HOME/.config/nvim/remap_key.vim

" Remap keys for plugins
map \\ <plug>NERDCommenterToggle
nmap <F5> :call LanguageClient_contextMenu()<CR>
nmap <silent> K :call LanguageClient#textDocument_hover()<CR>
nmap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nmap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nmap <Space> :Buffers<CR>
nmap <CR> :Files<CR>
nmap <C-f> :BLines<CR>
