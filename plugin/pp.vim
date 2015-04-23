if !exists("g:AutoCurline_enabled")
    let g:AutoCurline_enabled = 1
endif
function! AutoToggleCurline()
    if g:AutoCurline_enabled
		setlocal cursorcolumn
    else
		setlocal nocursorcolumn
    endif
    let g:AutoCurline_enabled = !g:AutoCurline_enabled
endfunction
if !exists(':AutoToggleCurline')
	command -nargs=0 AutoToggleCurline :call s:AutoToggleCurline()
endif

if !exists("g:AutoList_enabled")
    let g:AutoList_enabled = 1
endif
function! AutoToggleList()
    if g:AutoList_enabled
		setlocal listchars=tab:>-,eol:<,nbsp:%,trail:@
		setlocal list
    else
		setlocal nolist
    endif
    let g:AutoList_enabled = !g:AutoList_enabled
endfunction
if !exists(':AutoToggleList')
	command -nargs=0 AutoToggleList :call s:AutoToggleList()
endif


if !exists("g:Autofiletype_enabled")
    let g:Autofiletype_enabled = 1
endi
function! AutoToggleFiletype()
    if g:Autofiletype_enabled
		set filetype=asm
		echo "filetype=asm"
    else
		set filetype=c
		echo "filetype=c"
    endif
    let g:Autofiletype_enabled = !g:Autofiletype_enabled
endfunction
if !exists(':AutoToggleFiletype')
	command -nargs=0 AutoToggleFiletype :call s:AutoToggleFiletype()
endif


if !exists("g:Automodi_enabled")
    let g:Automodi_enabled = 1
endi
function! AutoToggleModifiable()
    if g:Automodi_enabled
		set modifiable
		echo "modifiable"
    else
		set nomodifiable
		echo "nomodifable"
    endif
	let g:Automodi_enabled = !g:Automodi_enabled
endfunction
if !exists(':AutoToggleModifiable')
	command -nargs=0 AutoToggleModifiable :call s:AutoToggleModifiable()
endif

function! Enter_lf()
	let l:elflocal = strridx(getline("."),"}")
	echo "elflocal :" . l:elflocal
	if l:elflocal < 0
	return "\<End>"
	else
	let l:elfenter = "\<CR>\<CR>\<UP>\<TAB>"
	call cursor(0,l:elflocal + 1)
	return l:elfenter
	endif
	endfunction
function! Enter_quot()
	while(1)
	let l:elflocal = strridx(getline("."),")")
	if l:elflocal >= 0
	break
	endif
	let l:elflocal = strridx(getline("."),"]")
	if l:elflocal >= 0
	break
	endif
	let l:elflocal = strridx(getline("."),"}")
	break
	endwhile
	echo "elflocal :" . l:elflocal
	if l:elflocal < 0
	return ""
	else
	let l:elfenter = "\"\"\<Left>"
	call cursor(0,l:elflocal + 1)
	return l:elfenter
	endif
	endfunction
function! Tar_pwd()
	let l:elflocal = strridx($PWD,"/")
	if l:elflocal < 0
	return "xxx"
	else
	let l:name = strpart($PWD, l:elflocal + 1)
        let l:cmd='cd $PWD && tar cvf '.l:name.'.tar * ; nautilus $PWD'
        call system(l:cmd)
	endif
	endfunction
function! Local_bracket()
	while(1)
	let l:local = strridx(getline("."),"\"")
	if l:local >= 0
	break
	endif
	let l:local = strridx(getline("."),"}")
	if l:local >= 0
	break
	endif
	let l:local = strridx(getline("."),"]")
	if l:local >= 0
	break
	endif
	let l:local = strridx(getline("."),")")
	break
	endwhile
	if l:local < 0
	return ""
	else
	let l:enter = "\<Right>"
	call cursor(0,l:local )
	return l:enter
	endif
	endfunction
