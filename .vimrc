execute pathogen#infect()
set tabstop=4
set shiftwidth=4
set expandtab
set modeline
set hlsearch
filetype plugin indent on
cmap w!! w !sudo tee %
au FileType yaml setlocal ts=2 sts=2 sw=2 
au FileType tf setlocal ts=2 sts=2 sw=2
let g:netrw_altv = 1
let g:netrw_liststyle = 4
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"  autocmd VimEnter * if (argc() > 0 && filereadable(argv()[0])) | wincmd l | endif
"augroup END
