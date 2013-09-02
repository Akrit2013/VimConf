function OpenHeadFile()
	let Name = expand("%")
	let Exp = fnamemodify(Name,":e")
	if Exp == "h"
		let Tail = ".cpp"
	else
		let Tail = ".h"
	endif
	let HeadName = fnamemodify(Name,":r").Tail
	"let RealName = substitute(a:FileName,".asm",".rc","")
	execute "split ".HeadName
endfunction

function MakeCtags()
	let Name = expand("%")
	let Exp = fnamemodify(Name,":e")
	if Exp == "h"
		execute "!ctags --languages=c++,c --recurse"
	elseif Exp == "cpp"
		execute "!ctags --languages=c++ --recurse"
	elseif Exp == "c"
		execute "!ctags --languages=c --recurse"
	elseif Exp == "sh"
		execute "!ctags --languages=sh --recurse"
	elseif Exp == "vim"
		execute "!ctags --languages=vim --recurse"
	endif
endfunction
