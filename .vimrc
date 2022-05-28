

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"--------------Plugin----------------------"

call plug#begin('~/.vim/plugged')

Plug 'xuhdev/vim-latex-live-preview',{'for': 'tex'}
Plug 'morhetz/gruvbox'
" Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'bling/vim-airline'
Plug 'zchee/deoplete-jedi'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/a.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" colorscheme gruvbox
filetype plugin indent on
set colorcolumn=80
set number
" set tabstop=3
" set shiftwidth=3
set expandtab
syntax on 
set autoindent
set smartindent
set nowrap
set cursorline
set spell
set wildmenu
set path+=**
set splitright
" indent for global
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set mouse=a

"--------------- key binding ------------"
let mapleader = ","


imap jk <Esc>
imap ,w <Esc>:wall!<cr>
map ,w :wall!<cr>
imap <leader>m :!clear && make
map <silent> <F5> :NERDTreeToggle<CR>
tnoremap jk <C-\><C-n>
map ,m <Esc>:!clear && make<cr>
imap qq <Esc>:wqall!<cr>
map qq :wqall!<cr>
imap ,q <Esc>:q!<cr>
map ,q :q!<cr>
imap<leader>p <Esc>:!pdf %<CR>
map<leader>p <Esc>:!pdf %<CR>
imap ,s <ESC>:terminal<CR>A                                 
map ,s :terminal<cr>A

"  Smart way to move between windows "
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" command! MakeTags !ctags -R *.c *.h



"----------Plugin Setting-------------------------"

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> ,t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0




" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
