" Insert mode
inoremap jj <Esc>
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

" normal, visual and operator pending mode
noremap <C-c> "+y
noremap K {
noremap J }
noremap B ^
noremap E $
noremap ; :

" normal mode
nmap <Left> :vertical resize -2<CR>
nmap <Right> :vertical resize +2<CR>
nmap <Up> :resize +2<CR>
nmap <Down> :resize -2<CR>
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-w> <C-w>w

" visual mode
vnoremap v <Esc>

" Terminal mode
tnoremap <expr> jj (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

