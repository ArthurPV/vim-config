" File: .vimrc
" Author: ArthurPV
" Year: 2025

" All plugins I am using

call plug#begin("~/.vim/plugged")

Plug 'xxx/bl.vim'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Emmet for vim
Plug 'mattn/emmet-vim'

" A command-line fuzzy finder
Plug 'junegunn/fzf'

" Vim motions on speed
Plug 'easymotion/vim-easymotion'

Plug 'joshdick/onedark.vim'

" A solid language pack for vim (syntax)
Plug 'sheerun/vim-polyglot'

" Add file type icons to Vim plugins such as: NERDTree...
Plug 'ryanoasis/vim-devicons'

" Enhanced multi-line search for Vim
Plug 'wincent/ferret'

" Run your tests at the speed thought
Plug 'janko-m/vim-test'

" Multiple cursor
Plug 'terryma/vim-multiple-cursors'

" My colorscheme
Plug 'ArthurPV/vim-moon-color'

" Preview colours in source code while editing
Plug 'ap/vim-css-color'

" :cactus: Viewver & finder for LSP symbols and tags
Plug 'liuchengxu/vista.vim'

" A tree explorer plugin for vim
Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

" Syntax highlighting for nerdtree + vim-devicons
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-crystal/vim-crystal'
Plug 'ArthurPV/vim-lily' 
Plug 'ArthurPV/ci.vim' 
Plug 'rhysd/vim-llvm'
Plug 'ghifarit53/tokyonight-vim'
Plug 'lifepillar/vim-solarized8' 
Plug 'orthecreedence/void.vim'
Plug 'SerenityOs/jakt.vim'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'kaarmu/typst.vim'
Plug 'rescript-lang/vim-rescript'
Plug 'EdenEast/nightfox.nvim'
Plug 'editorconfig/editorconfig-vim'

Plug 'itchyny/calendar.vim'

Plug 'dylanaraps/wal.vim'

call plug#end()

" General settings

set ft=nasm
syntax on 
set termguicolors
set relativenumber
set nu
set encoding=UTF-8
set modifiable
filetype on
set tabstop=4
set laststatus=2
set shiftwidth=4
filetype plugin on
colorscheme void
set background=dark

" Command
let mapleader = ","

" nmap <C-k> :Vista<CR>
nmap <C-b> :NERDTreeToggle<CR>
" nmap <C-i> :PlugInstall<CR>
nmap <C-l> :tabnext<CR>
nmap <C-h> :tabprevious<CR>
nmap <C-a> :tabnew<CR>
" nmap <C-c> :bd<CR>
nmap <C-f> :FZF<CR>
nmap <C-\> :vs<CR>
nmap <C-@> :sp<CR>
nmap <C-s> :w<CR>
nmap <C-^> :q<CR>
nnoremap <Leader>g :vimgrep /<C-r>=input('Pattern: ')<CR>/g **<CR>
nnoremap <Leader>n :cnext<CR>
nnoremap <Leader>p :cprevious<CR>
nnoremap <Leader>c :e $MYVIMRC<CR>
nnoremap <Leader>t :term<CR>

" Command (run or build)

" c++
nnoremap <C-q>+ :!g++ -o  %:r % -std=c++17<Enter>
nnoremap <C-q>+r :!./%:r

" rust
nnoremap <C-q>r :!rustc -o %:r %<Enter>
nnoremap <C-q>rr :!./%:r

" cargo
nnoremap <C-q>rc :!cargo run

" python
nnoremap <C-q>p :!python %:r.py %<Enter>

" js (node)
nnoremap <C-q>j :!node %:r.js %<Enter>

" elixir
nnoremap <C-q>e :!elixir %:r.ex %<Enter>

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
