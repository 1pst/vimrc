if !exists("g:AutoCurline_enabled")
    let g:AutoCurline_enabled = 1
endif
function! AutoToggleCurline()
    if g:AutoCurline_enabled
		setlocal cursorcolumn
		echo "cursorcolumn"
    else
		setlocal nocursorcolumn
    endif
    let g:AutoCurline_enabled = !g:AutoCurline_enabled
endfunction
if !exists(':AutoToggleCurline')
	command -nargs=0 AutoToggleCurline :call s:AutoToggleCurline()
endif


if !exists("g:AutoChgKernstyle")
    let g:AutoChgKernstyle= 1
endif
function! AutoToggleKernstyle()
    if g:AutoChgKernstyle
		set tabstop=8
		set shiftwidth=8
		set softtabstop=8
		echo "kernel style"
    else
		set tabstop=4
		set shiftwidth=4
		set softtabstop=4
		echo ""
    endif
    let g:AutoChgKernstyle = !g:AutoChgKernstyle
endfunction
if !exists(':AutoToggleKernstyle')
	command -nargs=0 AutoToggleKernstyle :call s:AutoToggleKernstyle()
endif




if !exists("g:AutoList_enabled")
    let g:AutoList_enabled = 1
endif
function! AutoToggleList()
    if g:AutoList_enabled
		setlocal listchars=tab:>-,eol:<,nbsp:%,trail:@
		setlocal list
		echo "list"
    else
		setlocal nolist
    endif
    let g:AutoList_enabled = !g:AutoList_enabled
endfunction
if !exists(':AutoToggleList')
	command -nargs=0 AutoToggleList :call s:AutoToggleList()
endif

if !exists("g:AutoModi_enabled")
    let g:AutoModi_enabled = 1
endif
function! AutoToggleModi()
    if g:AutoModi_enabled
		setlocal nomodifiable
		echo "nomodifiable"
    else
		setlocal modifiable
		echo "modifiable"
    endif
    let g:AutoModi_enabled = !g:AutoModi_enabled
endfunction
if !exists(':AutoToggleModi')
	command -nargs=0 AutoToggleModi :call s:AutoToggleModi()
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

if !exists("g:AutoPaste")
    let g:AutoPaste = 1
endi
function! AutoTogglePaste()
    if g:AutoPaste
		set paste
		echo "paste"
    else
		set nopaste
		echo "nopaste"
    endif
    let g:AutoPaste = !g:AutoPaste
endfunction
if !exists(':AutoTogglePaste')
	command -nargs=0 AutoTogglePaste :call s:AutoTogglePaste()
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
	let l:pwd = $PWD
	let l:elflocal = strridx(l:pwd,"/")
	if l:elflocal < 0
	return "xxx"
	else
	let l:name = strpart(l:pwd, l:elflocal + 1)
        let l:cmd='cd '.l:pwd.' && tar cvf '.l:name.'.tar * ; nautilus '.l:pwd.';'
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
