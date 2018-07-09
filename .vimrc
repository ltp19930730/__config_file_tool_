"字符编码
"vim编码设置为utf-8,支持中文输入
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set encoding=utf-8
set langmenu=zh_CN.utf-8

"语法和缩进
"设定vim与vi不兼容
set nocompatible
"自动缩进，即为新行自动添加与当前行同等的缩进
set autoindent
"类似C语言程序的缩进
set cindent
set showmatch
"检索时忽略大小写
set ignorecase
set hlsearch
"显示行号
set nu
filetype plugin indent on

"tab相关设置
"开启时，在行首按TAB将加入shiftwidth个空格，否则加入tabstop个空格。
set smarttab
"是将输入的TAB自动展开成空格。开启后要输入TAB，需要Ctrl-V<TAB>
"set expandtab
set tabstop=4
"设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=4

"显示 TAB 键
set list
set listchars=tab:>-,trail:-

"颜色方案
set t_Co=256
"使用molokai 配色方案
colorscheme molokai
"为光标所在行加下划线,molokai配色下为高亮一行
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorcolumn
hi Cursorcolumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"语法高亮
syntax on

"插件设置
"pathogen settings
"启用pathogen进行插件管理
execute pathogen#infect()

"tagbar settings
"ctrl+t to open tarbar
nmap <C-T> :TagbarToggle<CR>

let g:tagbar_width = 20
"auto run tagbar when use vim
"autocmd VimEnter * nested :call tagbar#autoopen(1)
"tagbar window postion
let g:tagbar_right = 1
"let g:tagbar_left = 1

"nerdtree settings
"ctrl+n to open nerdtree
nmap <C-N> :NERDTree<CR>
"nerdtree window position 'left' or 'right'
let NERDTreeWinPos = 'left'
"nerdtree window Size
let NERDTreeWinSize = 30
let NERDTreeShowFiles = 1

"airline setting
"开启airline
set laststatus=2
"不检测行尾空格,trailing-white-space
let g:airline#extensions#whitespace#enabled = 0
"使用tab打开文件
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

"Code folding
"set foldmethod=syntax
"代码块折叠
autocmd FileType python set foldmethod=indent
"autocmd FileType xml set foldmethod=indent
"autocmd FileType dia set foldmethod=indent

"command Model map for go
"go 语言快捷键支持
"gd 快速打开:GoDef，GoDef支持代码内跳转到指定函数
"gr 快速执行:GoRun , 运行go程序
au FileType go cnoremap gd :GoDef<CR>
au FileType go cnoremap gr :GoRun<CR>

let g:go_fmt_command = "goimports"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set cscopequickfix=c+,d+,e+,g+,i+,s+,t+,f+
nmap <C-n> :cnext<CR>
nmap <C-m> :cprev<CR>

nmap <C-@>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"taglist
let Tlist_Use_Right_Window = 1 
map <silent> <F9> :TlistToggle<cr>

"quickfix
nnoremap <C-@>o :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cexpr []
        cclose
        let g:quickfix_is_open = 0
    else
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

"clipboard setting for gvim
set guioptions+=a
