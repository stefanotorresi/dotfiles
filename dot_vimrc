set tabstop=2
set shiftwidth=2
set expandtab
set modeline
set hlsearch
set background=dark
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

" https://github.com/gopasspw/gopass/blob/master/docs/setup.md#securing-your-editor
au BufNewFile,BufRead /dev/shm/gopass.* setlocal noswapfile nobackup noundofile

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug 'tpope/vim-surround'
call plug#end()
