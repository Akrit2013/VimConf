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
