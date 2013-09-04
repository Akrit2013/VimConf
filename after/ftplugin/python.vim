"����python���Զ������߶�Ϊ4���ո�
set shiftwidth=4
"����tab���Ϊ4���ո�,���ұ��ֺ�һ��tabһ��������һ����ɾ��
set softtabstop=4
"��Ҫ��tab�滻Ϊ��Ӧ�Ŀո�ʱ������ѡ��
set expandtab
"���python�����У�ֻ����������������
set foldmethod=indent
set foldlevel=99
"ÿ��:w�洢ʱ����flake8�����﷨���
autocmd BufWritePost *.py call Flake8()

"����syntax/python.vim�е����йؼ����﷨����
let python_highlight_all = 1

"�Զ���+ - * =����������ӿո�
let g:equ=1
"����= + - * ǰ���Զ��ո�
if exists("g:equ")
inoremap = <c-r>=EqualSign('=')<CR>
inoremap + <c-r>=EqualSign('+')<CR>
inoremap - <c-r>=EqualSign('-')<CR>
inoremap * <c-r>=EqualSign('*')<CR>
inoremap / <c-r>=EqualSign('/')<CR>
inoremap > <c-r>=EqualSign('>')<CR>
inoremap < <c-r>=EqualSign('<')<CR>
inoremap , ,<space>
endif
 
function! EqualSign(char)
    if a:char  =~ '='  && getline('.') =~ ".*("
        return a:char
    endif 
    let ex1 = getline('.')[col('.') - 3]
    let ex2 = getline('.')[col('.') - 2]
    let ex3 = col('.')
 
    if ex1 =~ "[-=+><>\/\*]"
        if ex2 !~ "/s"
            return "\<ESC>i".a:char."\<SPACE>"
        else
            return "\<ESC>xa".a:char."\<SPACE>"
        endif 
    else
        if ex2 !~ "/s"
            return "\<SPACE>".a:char."\<SPACE>\<ESC>a"
        else
            return a:char."\<SPACE>\<ESC>a"
            "return ex3
        endif 
    endif
endf
"==============================
