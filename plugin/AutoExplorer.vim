au! CursorHold *.[ch] nested call PreviewWord()
func PreviewWord()
  if &previewwindow			" 不要在预览窗口里执行
    return
  endif
  let w = expand("<cword>")		" 在当前光标位置抓词
  if w =~ '\a'			" 如果该单词包括一个字母

    " 在显示下一个标签之前，删除所有现存的语法高亮
    silent! wincmd P			" 跳转至预览窗口
    if &previewwindow		" 如果确实转到了预览窗口……
      match none			" 删除语法高亮
      wincmd p			" 回到原来的窗口
    endif

    " 试着显示当前光标处匹配的标签
    try
       exe "ptag " . w
    catch
      return
    endtry

    silent! wincmd P			" 跳转至预览窗口
    if &previewwindow		" 如果确实转到了预览窗口……
	 if has("folding")
	   silent! .foldopen		" 展开折叠的行
	 endif
	 call search("$", "b")		" 到前一行的行尾
	 let w = substitute(w, '\\', '\\\\', "")
	 call search('\<\V' . w . '\>')	" 定位光标在匹配的单词上
	 " 给在此位置的单词加上匹配高亮
      hi previewWord term=bold ctermbg=green guibg=green
	 exe 'match previewWord "\%' . line(".") . 'l\%' . col(".") . 'c\k*"'
      wincmd p			" 返回原来的窗口
    endif
  endif
endfun
