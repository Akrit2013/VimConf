"import pathogen function
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

"============================================
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The basic config
"
" 开启语法高???
syntax on 
" 设置文字编码自动识别
set fencs=utf-8,cp936
" 使用鼠标
set mouse=a
" 设置高亮搜索
set hlsearch
" 输入字符串就显示匹配???
set incsearch
" 输入的命令显示出来，看的清楚些???
set showcmd
" 启动函数变量快速浏览的时间设置
"set updatetime=100  " It will auto search tag fills sometimes
"set backspace=indent,eol,start!
set number!
set cindent!
set ruler!
set ru
filetype plugin indent on
"set patchmode=.orig
behave mswin
set autowrite
"set makeprg=g++
"set complete=.,w,u,t,i,b,d,k
set complete=.,w,u,t,b,k
set dictionary=./dictionary
"set background=dark
"Set colorscheme
colorscheme evening
aunmenu Help
set fileencodings=gbk,utf-8,big5,cp936,gb2312,gb18030
set fileencoding=utf8
set foldmethod=syntax
"set backupdir=$VIM\\tmp 	"set backup file path, just for mswin
set directory=/tmp 	"set swp file path
set bdir=/tmp
"set backupdir=D:\\tmp 	"set backup file path, just for mswin
"set guifont=Consolas\ 12 	"set font and size under MSWIN
set guifont=Monaco\ 12 		"Use mac style font, can be download from monaco-font on github
"set guifont=simsun\ 10
"""""""""""""""""""""""""""""""""""""""
" The config for the taglist plugin
" Tlist的内部变量。函数列表???
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Close_On_Select=1
" 打开Tlist后侧边栏后获取焦???
let Tlist_GainFocus_On_ToggleOpen = 1

"""""""""""""""""""""""""""""""""""""""
" The key bounding
inoremap <Tab> <C-P>
"nmap <F2> :make<space>exe=%<space>run<CR>
"imap <F2> <ESC>:make<space>exe=%<space>run<CR>
"nmap <F3> :make<space>exe=%<CR>
"imap <F3> <ESC>:make<space>exe=%<CR>
"C++
"nmap <F5> :make<space>exe=%<space>debug=_debug<space>param=-g<CR>
"imap <F5> <ESC>:make<space>exe=%<space>debug=_debug<space>param=-g<CR>
"Python
"nmap <F5> :w<BAR>!python<space>%<CR>
"imap <F5> <ESC>:w<BAR>!python<space>%<CR>

"nmap <F4> :make<space>exe=%<space>clean<CR>
"imap <F4> <ESC>:make<space>exe=%<space>clean<CR>
nmap <F2> :split<space>makefile<CR>
imap <F2> <ESC>:split<space>makefile<CR>

" Instead of the taglist, use the tagbar plugin
map <F3> :TagbarToggle<CR>

" 打开当前目录文件列表
" map <F7> :e .<CR>
" 全能补全
" inoremap <F8> <C-x><C-o>
" 打开SourceInsight窗口
map <F5> :TrinityToggleAll<CR> 

" Open and close the srcexpl.vim separately 
map <F6> :TrinityToggleSourceExplorer<CR> 

" Open and close the NERD_tree.vim separately 
map <F7>  :TrinityToggleNERDTree<CR> 
" 函数和变量列???
" map <F9> :Tlist<CR>

" 搜索当前词，并打开quickfix窗口
" map <F8> :call Search_Word()<CR>

" Generate the tag file
map <F12> :!ctags -R *<CR>

nmap <c-F1> :call<space>OpenHeadFile()<CR>
imap <c-F1> <ESC>:call<space>OpenHeadFile()<CR>
nmap <c-F2> :call<space>MakeCtags()<CR><space>
"nmap <a-d> :make<space>exe=%<space>debug=_debug<space>rundebug<CR>
inoremap <c-p> <tab>
nmap <c-up> :cprevious<CR>
nmap <c-down> :cnext<CR>
nmap <c-left> :cfirst<CR>
nmap <c-right> :clast<CR>
nmap <c-s> :cc<CR>
nmap <a-=> <c-w>+
nmap <a-9> <c-w><
nmap <a-0> <c-w>>
nmap <a--> <c-w>-
nmap <a-c> :w<CR>:close<CR>
nmap <a-x> :wall<CR>:only<CR>
nmap <a-up> <c-w>k
nmap <a-k> <c-w>k
nmap <c-k> <c-w>K
nmap <a-down> <c-w>j
nmap <a-j> <c-w>j
nmap <c-j> <c-w>J
nmap <a-left> <c-w>h
nmap <a-h> <c-w>h
nmap <c-h> <c-w>H
nmap <a-right> <c-w>l
nmap <a-l> <c-w>l
nmap <c-l> <c-w>L
"nnoremap <a-l> <c-l>

vmap <c-c> "+y
nmap <a-[> :bprevious<CR>
nmap <a-]> :bnext<CR>
noremap <up> gk
noremap <down> gj
"nmap <c-[> <c-w>] "There may be some conflict with Vim in terminal mode

nmap <c-F6> :split<space>$HOME/.vimrc<CR>
nmap <a-`> :iunmap<space><lt>space><bar><space>inoremap<space><lt>c-p><space><lt>tab><bar><space>inoremap<space><lt>s-space><space><lt>tab><CR>
imap <a-`> <ESC>:inoremap<space><lt>space><space><lt>tab><bar><space>inoremap<space><lt>c-p><space><lt>space><bar>inoremap<space><lt>s-space><space><lt>space><CR>a
"inoremap <s-space> <tab>
vmap <c-c> "+y
vmap <c-v> "+p

"unmap the ctrl+y which was defined in mswin.vim
iunmap <C-Y>
"===============follows are for csplugin===================
let g:C_LoadMenus='no' "not automatically load start menu, you can type \lcs(\ucs) to load(unload) it mannually as you need

"===============omnicppcomplete==========================
set nocp
filetype plugin on
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_NamespaceSearch = 2
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_SelectFirstItem = 0
let OmniCpp_MayCompleteScope = 1
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"????python?Զ???ȫ
autocmd FileType python set omnifunc=pythoncomplete#Complete

"????task list??????
map <leader>td <Plug>TaskList

" Disable the menu bar and icon bar
set guioptions-=m
set guioptions-=T
