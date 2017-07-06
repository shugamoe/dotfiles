" vim-plug
" Auto install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'lervag/vimtex'
Plug 'jalvesaq/Nvim-R'
Plug 'derekwyatt/vim-scala'
Plug 'davidhalter/jedi'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'vim-latex/vim-latex'

call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

"vimtex
let g:vimtex_view_general_viewer='okular'
let g:vimtex_view_general_options='--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk='--unique'

" vimtex Airline integration
let g:airline#extensions#vimtex#enabled = 1

" Ale
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_linters = {
\   'scala': [''],
\}


if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
colorscheme OceanicNext
set background=dark

" Airline theme
let g:airline_theme='aurora'

set number " Show line numbers
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=5
set expandtab

" for R files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" for py files, 4 spaces
autocmd Filetype py setlocal ts=4 sw=4 sts=0 expandtab smarttab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab


" word wrap off
set wrap!

" Super tab go down through menus
let g:SuperTabDefaultCompletionType = "<c-n>"

" Add full file path to your existing statusline
set statusline+=%F

" markdown filetype file
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown

" copy and paste w/o line numbers
set mouse=a

" Relative line numbers
set relativenumber

" Set highlight search
set hlsearch " vim-latex settings

" Display special chars
:set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
:set list

" Tmux colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Jedi settings
let g:jedi#use_tabs_not_buffers = 1
let g:python3_host_prog = '/home/jcm/anaconda3/bin/python'
let g:python_host_prog = '/home/jcm/anaconda3/bin/python'
let g:deoplete#sources#jedi#show_docstring = 1

