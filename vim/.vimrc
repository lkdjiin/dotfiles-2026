set nocompatible

if &shell =~# 'fish$'
    set shell=/bin/bash
endif

" Vim-plug section -------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:tpope/vim-commentary.git'
Plug 'git@github.com:Lokaltog/vim-easymotion.git'
Plug 'git@github.com:morhetz/gruvbox.git'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'vim-airline/vim-airline'
Plug 'git@github.com:vim-scripts/AutoComplPop.git'
call plug#end()
" ------------------------------------------------------

set nobackup
set ruler " show the cursor position all the time
set incsearch " Incremental search
set hlsearch " Highlight last search pattern
set number
set clipboard=unnamedplus
" tab/spaces -------------------------------------------
set tabstop=2
set shiftwidth=2
set expandtab
" ------------------------------------------------------
set ignorecase smartcase

" Configuration dépendante de l'ordi -------------------
source ~/.vim/vimrc.local.vim
" ------------------------------------------------------

" Theme section ----------------------------------------
autocmd vimenter * ++nested colorscheme gruvbox
" ------------------------------------------------------

" Sauvegarder le fichier quand on change d'onglet.
autocmd FocusLost,TabLeave * :wall

" Languages syntax -------------------------------------
autocmd BufRead *.asm set filetype=kickass

" Bépo section -----------------------------------------
source ~/.vim/vimrc.bepo.vim
" --- EasyMotion for my bépo keyboard ------------------
let g:EasyMotion_leader_key = '<Space>'
let g:EasyMotion_mapping_f = '<Space>f'
let g:EasyMotion_mapping_F = '<Space>F'
let g:EasyMotion_mapping_t = '<Space>j'
let g:EasyMotion_mapping_T = '<Space>J'
let g:EasyMotion_mapping_w = '<Space>é'
let g:EasyMotion_mapping_W = '<Space>É'
let g:EasyMotion_mapping_b = '<Space>b'
let g:EasyMotion_mapping_B = '<Space>B'
let g:EasyMotion_mapping_e = '<Space>e'
let g:EasyMotion_mapping_E = '<Space>E'
let g:EasyMotion_mapping_ge = '<Space>ge'
let g:EasyMotion_mapping_gE = '<Space>gE'
let g:EasyMotion_mapping_j = '<Space>t'
let g:EasyMotion_mapping_k = '<Space>s'
let g:EasyMotion_mapping_n = '<Space>n'
let g:EasyMotion_mapping_N = '<Space>N'
" ------------------------------------------------------

" AutoCompletePop --------------------------------------
" 4 lettres pour tenter une complétion
let g:acp_behaviorKeywordLength = 4
" ------------------------------------------------------

" En mode normal , les touches fléchées ----------------
" servent à changer de fenêtre
nnoremap <up> <C-w><up>
nnoremap <down> <C-w><down>
nnoremap <left> <C-w><left>
nnoremap <right> <C-w><right>
" ------------------------------------------------------

" Leader section ---------------------------------------
let mapleader = ","

" (vim-commentary) As gc is all but practical on a bépo keyboard
map <Leader>c gc

" Toggle line highlighting
map <Leader>l :set cursorline!<Enter>

" Indispensable, l'item de todo list
nnoremap <Leader>tt I[ ]<Space><Esc>
" ------------------------------------------------------

