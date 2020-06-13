call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tomasr/molokai'
Plug 'junegunn/fzf.vim'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:airline_theme = 'dark'

let &t_SI .= "\e[5 q"
let &t_EI .= "\e[1 q"
set backspace=indent,eol,start

syntax on
colorscheme molokai
"hi Normal ctermbg=none
hi Comment ctermfg=Gray

set ttimeoutlen=50
set clipboard+=unnamed
set hidden

" 行番号表示
set number

" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch
" 検索パターンに大文字小文字を区別しない
set ignorecase
" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase
" 検索結果をハイライト"
set hlsearch

" 不可視文字を可視化(タブが「▸-」と表示される)
"set list listchars=tab:\▸\-

" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~

" カーソルラインをハイライト"
"set cursorline

nmap <C-n> <Plug>AirlineSelectPrevTab
nmap <C-m> <Plug>AirlineSelectNextTab
nmap <silent> <Esc><Esc> :<C-u>noh<CR><Esc>
nmap <silent> <C-o> :NERDTreeToggle<CR>
tnoremap <silent> <ESC> <C-\><C-n>
