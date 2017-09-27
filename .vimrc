filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Rip-Rip/clang_complete'
Bundle 'msanders/cocoa.vim'
Bundle 'terhechte/syntastic'
Bundle 'eraserhd/vim-ios'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'Keithbsmiley/specta.vim'
Bundle 'b4winckler/vim-objc'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-rake'

filetype plugin indent on

set tabstop=2 shiftwidth=2 expandtab

set wrap
set textwidth=80

set nu
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

set shell=/bin/sh
set term=xterm-256color
set background=dark

autocmd BufReadPost,BufWrite *{Spec.m,Example*.m} set filetype=specta
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Podfile set filetype=ruby

let c_no_curly_error = 1

let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_max = 250

set splitright

nmap ,n :NERDTreeFind<CR>
