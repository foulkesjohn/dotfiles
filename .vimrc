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

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4

set nu
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

autocmd BufReadPost,BufWrite *{Spec.m,Example*.m} set filetype=specta

let c_no_curly_error = 1

let g:clang_user_options='-fblocks -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator7.0.sdk/ -D__IPHONE_OS_VERSION_MIN_REQUIRED=70000'

map <Left> :echo "Try H!"<cr>
map <Right> :echo "Try L!"<cr>
map <Up> :echo "Try K!"<cr>
map <Down> :echo "Try J!"<cr>

let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_max = 250

set splitright

set errorformat=
  \%f:%l:%c:{%*[^}]}:\ error:\ %m,
  \%f:%l:%c:{%*[^}]}:\ fatal\ error:\ %m,
  \%f:%l:%c:{%*[^}]}:\ warning:\ %m,
  \%f:%l:%c:\ error:\ %m,
  \%f:%l:%c:\ fatal\ error:\ %m,
  \%f:%l:%c:\ warning:\ %m,
  \%f:%l:\ error:\ %m,
  \%f:%l:\ fatal\ error:\ %m,
  \%f:%l:\ warning:\ %m
