" vim-plugでのプラグイン管理
call plug#begin('~/.vim/plugged')
" ディレクトリツリーを表示する
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
" NERDTreeをCtrl+Nで開閉する
map <C-n> :NERDTreeToggle<CR>

" 行番号を表示する
set number
" タブをスペースに置き換える
set expandtab
" タブ幅
set tabstop=2
" インデント幅（e.g. >>）
set shiftwidth=2
" ハイライト検索
set hlsearch
" 検索時に大文字小文字を区別しない
set ignorecase
" 検索時に大文字を含む場合、大文字のみを検索対象とする
set smartcase
" インクリメンタルサーチ
set incsearch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" yank時にクリップボードにもコピーする
set clipboard=unnamed
" デリートキーで文字を削除できるようにする
set backspace=indent,eol,start
" Solarized設定
syntax enable
set background=dark
colorscheme solarized
