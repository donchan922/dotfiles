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
" オートインデント
set autoindent
" Solarized設定
syntax enable
set background=dark
colorscheme solarized
" NERDTreeをCtrl+Nで開閉する
map <C-n> :NERDTreeToggle<CR>

" vim-plugでのプラグイン管理
call plug#begin('~/.vim/plugged')
" ディレクトリツリーを表示する
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()
