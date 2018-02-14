set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set nu rnu
set ruler
set autoindent
filetype on
filetype indent on
filetype plugin indent on
let mapleader=";"
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set incsearch
set ignorecase
set nocompatible
set wildmenu
set background=dark
set laststatus=2
set hlsearch
syntax enable
syntax on
imap <Leader>; <ESC>:w<CR>
imap <Leader>' <ESC>:wq<CR>
imap <Leader>] <ESC>:w<CR> :!gdb %<.exe -q <CR>
imap <Leader>[ <ESC>:w<CR> :!g++ % -o %<.exe -g -Wall -DLOCAL<CR>
imap <Leader>\ <ESC>:w<CR> :!time ./%<.exe <CR>
imap <Leader>in <ESC>:w<CR> :!vim in<CR>
imap <Leader>g :w<CR> :!gedit %<CR>
map <Leader>; :w<CR>
map <Leader>' :wq<CR>
map <Leader>] :w<CR> :!gdb %<.exe -q <CR>
map <Leader>[ :w<CR> :!g++ % -o %<.exe -g -Wall -DLOCAL<CR>
map <Leader>\ :w<CR> :!time ./%<.exe <CR>
map <Leader>in :w<CR> :!vim in<CR>
map <Leader>g :w<CR> :!gedit %<CR>
" ------------------------------------ "
" 以下是插件相关
" 如果需要使用先 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim




" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors' " <C-N> 快速选中下一个和已经选中的字符串相同的字符串
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/DrawIt'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
" 插件列表结束
call vundle#end()
filetype plugin indent on


" 安装方法
" :PluginInstall


" --------- 插件配置 ----------------- "

" -- YCM -- "

"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" -- NT -- "
"F2开启和关闭树"
map <Leader>t :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25

" -- indentLine -- "

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
" -- indent_guide -- "

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

"set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim
"set laststatus=2
"set t_Co=256
let g:airline_theme="luna" 

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   

"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

