"更改python的自动缩进尺度为4个空格
set shiftwidth=4
"更改tab宽度为4个空格,并且表现和一个tab一样，可以一次性删除
set softtabstop=4
"需要将tab替换为相应的空格时开启此选项
set expandtab
"添加python的折行，只根据缩进进行折行
set foldmethod=indent
set foldlevel=99
"每当:w存储时都用flake8进行语法检查
autocmd BufWritePost *.py call Flake8()

"开启syntax/python.vim中的所有关键字语法高亮
let python_highlight_all = 1
