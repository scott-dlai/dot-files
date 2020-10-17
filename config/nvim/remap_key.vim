inoremap jj <Esc>
inoremap <C-j> <C-n>
inoremap <C-K> <C-p>
noremap <C-k> {
noremap <C-j> }
nnoremap E $
nnoremap ; :
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
vnoremap ; :
vnoremap c "+y
tnoremap <expr> jj (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

