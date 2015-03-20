"settings  by fred wang
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

set nocompatible 
""for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'The-NERD-tree'
Bundle 'cscope.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Tagbar'
Bundle 'a.vim' 
Bundle 'ack.vim'
Bundle 'YankRing.vim'
Bundle 'c-standard-functions-highlight'
Bundle 'largefile'
Bundle 'DoxygenToolkit.vim'
Bundle 'linuxsty.vim'


Bundle 'echofunc.vim'
Bundle 'scrooloose/syntastic'
Bundle 'neocomplcache'
Bundle 'OmniCppComplete'
Bundle 'SnipMate'

""""Bundle 'Valloric/YouCompleteMe'
""""Bundle 'multi.vim'
""""Bundle 'vim-scripts/AutoClose'
""""Bundle 'supertab'
""""Bundle 'code_complete'
""""Bundle 'superSnipMate'
""""Bundle 'srcexpl'

let m_vimp=".vimp"
let tagfiles=".vimp/tags"

let mapleader=","
set backspace=indent,eol,start 
"set fileencodings=cp936,utf-8,gbk,ucs-bom
set fileencodings=utf-8,gbk,ucs-bom,cp936
set nu
set ai
set cindent
set mouse=a
set tabstop=4
"set expandtab
set shiftwidth=4
set incsearch "实时匹配
set hlsearch "实时匹配
"set ignorecase "忽略大小写搜索
set ignorecase smartcase "smartcase，这样搜索时默认不区分大小写，只有搜索关键字中出现一个大字母时才区分大小写
set filetype=diff "default file type detection 
set showmatch  "设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set ruler "show the line and column number of the cursor position
set autochdir "auto change dir
set autoread "auto reload
set foldmethod=manual
"set dir=/tmp
syntax on
filetype plugin indent on
"set cursorline
"set termencoding=encoding

nmap <leader>e <esc>:cd $PWD <CR> :Ack --ignore-dir==.git --type=nohtml <space>
nmap <leader>f <esc>:sfind <space>
nmap <F2> :cp<CR>
nmap <F3> :cn<CR>
"nmap <leader>N :cp<CR>
"nmap <leader>n :cn<CR>

inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

"inoremap <C-f> <PageDown>
"inoremap <C-b> <PageUp>
"inoremap <C-r> <END><CR>
"inoremap (	()<left>
"inoremap [ []<left> 
"inoremap " ""<left> 
"inoremap ' ''<left>

"nnoremap <c-h> <c-w>h
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-l> <c-w>l
nnoremap <c-l> <c-w>w
nnoremap <c-h> <c-w>W
"nnoremap <c-m> :TagbarOpen fj <CR>

nmap <leader>y <esc>:YRShow<CR>
nmap <leader>w :w!<CR>
vmap <leader>w <esc>:w!<CR>

map <C-s> <Esc>:w!<CR>

nmap <leader>4 <esc>:q!<CR>
vmap <leader>4 <esc>:q!<CR>
"nmap <leader>4 :q<CR>
nmap <leader>5 <esc>:set readonly<CR>
"nmap <leader>5 <esc>:set nomodifiable<CR>

nmap <leader>9 <esc>:set modifiable<CR> <esc>:colorscheme default<cr>
vmap <leader>9 <esc>:set modifiable<CR> <esc>:colorscheme default<cr>

nmap <leader>d <esc>:diffthis<CR> <esc>:colorscheme delek<cr> 
vmap <leader>d <esc>:diffthis<CR> <esc>:colorscheme delek<cr>
"nmap <leader>d <esc>:diffthis<CR> <esc>:colorscheme evening<cr> <esc>:set nomodifiable<CR>
"vmap <leader>d <esc>:diffthis<CR> <esc>:colorscheme evening<cr><esc>:set nomodifiable<CR>

nmap <leader>h <esc>:A<CR>
"nmap <leader>m <esc>:set filetype=asm<CR>
"if !exists(':AutoToggleFiletype')
nnoremap <silent> <leader>m :call AutoToggleFiletype()<CR>
inoremap <C-e> <esc>gUiwea
inoremap <silent> <C-d> <C-R>=Enter_lf()<CR>
"inoremap <silent> <C-g> <C-R>=Enter_quot()<CR>
inoremap <silent> <C-t> <C-R>=Local_bracket()<CR>
nnoremap <silent> <leader>g :call AutoToggleCurline()<CR>
nnoremap <silent> <leader>z :call AutoToggleList()<CR>
"nmap g <ESC>:call AutoToggleModifiable()<CR>
nmap <leader>1 :set fileformat=unix<CR>
"nmap <leader>2 :set fileformat=dos<cr><esc> :set fileencoding=cp936
"map <F4> :
nmap <leader>2 :bel sp $PWD <CR>
nmap <leader>3 :vsplit<CR> <C-l> :edit<space> 

"inoremap <C-d> <esc>i<CR><esc>ko
"inoremap <C-e> <esc>gUiwe
"nmap <C-w> :q<CR>

map <C-w> :q<CR>
nnoremap<C-w> <esc>:q<CR>
vnoremap<C-w> <esc>:q<CR>
inoremap<C-w> <esc>:q<CR>


vnoremap <C-c> "+y
inoremap <C-v> <esc>"+gpi




"alt remap
nmap 1 <ESC>:%! xxd -r<CR>
nmap 4 <ESC>:set modifiable<CR> <ESC>:%! xxd<CR>
"
"inoremap <C-v> <esc>"+gPk
""{
"CROSS =
"CC = $(CROSS)gcc
"app = test
"
"src ?= ./test.c \
"	  ./test-1.c
"
"objs ?= $(src:.c=.o)
"
"CFLAGS ?= -g -Wall 
"
"%.o : %.c
"	$(CC) $(CFLAGS) -c $< -o $@
"
"$(app) : $(objs)
"	$(CC) $(CFLAGS) $^ -o $@
"
"
"clean:
"	@rm -rf $(objs) $(app)
"	@echo clean finished.
""}
 

nmap 5 <ESC>:cd $PWD <CR> :!echo -e "\#A simple makefile which automatic generation by fred.\nCROSS = \nCC ?= \$(CROSS)gcc\napp = \n\nsrc = \n\nobjs = \$(src:.c=.o) \n\nCFLAGS = -g -Wall \n\n\%.o : \%.c \n\t\$(CC) \$(CFLAGS) -c $< -o \$@ \n\n\$(app) : \$(objs) \n\t\$(CC) \$(CFLAGS) \$^ -o \$@ \n\nclean:\n\t@rm -rf \$(objs) \$(app)\n\t@echo clean finished.\n\n">Makefilet <cr>:bel split Makefilet<cr><cr>

"auto generated gitignore
nmap 6 <ESC>:cd $PWD <CR> :!echo -e "\#vim files \n*.swp\n*.mark\ntags\ncscope.*\n\n\n\n \#backup files\n*.bak \n\n\n\# Compiled source \n*.o\n*.elf\n*.ko\n*.so\n*.com\n*.class\n*.dll\n*.exe\n\n\n\n\n\# Packages \#\#\#\#\#\#\#\#\#\#\#\#\#\n\# it's better to unpack these files and commit the raw source\n\# git has its own built in compression methods\n*.7z\n*.dmg\n*.gz\n*.iso\n*.jar\n*.rar\n*.tar\n*.zip\n*.bz2\n*.xz\n\n\n\n\# Logs and databases \# \#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#*.sql\n*.sqlite\n\n\n\n\n\#self file\n\#.gitignore\n\n\n\n\n\# OS generated files\#\n\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n.DS_Store*\nehthumbs.db\nIcon?\nThumbs.db\n\#project files\n *.project\n\n\n\n\#source insight\n*.IAB\n*.IAD\n*.IMB\n*.IMD\n*.PFI\n*.PO\n*.PR\n*.PRI\n*.PS\n*.SearchResults\n*.WK3\n\n\#else\n\n*.mcs\n*.mptags\n*.tagsrc\n*.O\n*.cof\n*.err\n*.lst\n*.map\n*.dep\n*.as\n*.hxl\n*.pre\n*.p1\n*.rlf\n*.sym\n*.sdb\n*.obj\nfunclist\n\n\n\n\n\n\n\n\#\#\#\#\3\n\!*.c\n\!*.h\n \n\n">gitignoret <cr>:bel split .gitignoret<cr><cr>



nmap 2 <ESC>:prev<CR>
nmap 3 <ESC>:next<CR>
nmap 7 <ESC>:cd $PWD <CR><esc>:cscope add .vimp/cscope.out <CR><esc> 

nmap 9 <ESC>:cd $PWD <CR><esc> :cs kill -1 <CR><esc> :!rm -rf .vimp/*cscope* .vimp/tags <CR><esc>

"nmap 7 <ESC>:cscope add escape(g:m_vimp)/cscope.out <cr>
"nmap 8 <ESC>:! git commit  
"nmap 9 <ESC>:e! <CR>
"nmap 0 <ESC>:cd $PWD <CR> :cs kill -1 <CR> :!rm -rf cscope.* <CR> :!rm -rf tags<CR>
"
"nnoremap <c-g> <esc>ggVG





nmap <s-tab> <esc>:tabNext<CR>

"nmap <C-tab> :tabNext<CR>
"map <C-h> <Esc>:%s/
"nnoremap <C-4> <esc>:q<CR>
"inoremap <C-4> <esc>:q<CR>
"vnoremap <C-c> :w! /tmp/buf<CR>
"inoremap <C-v> <esc>:r /tmp/buf<CR>
"nnoremap <C-v> "+gP 

"nnoremap <C-160> :tselect<CR>
"nmap <c-m> :tselect<CR>

"nmap <c-u> :
nmap <c-d> :tselect <CR>
"nnoremap <C-7> :tselect<CR>
"nnoremap <C-x> :tselect<CR> tselectval <CR> tselectval+=1<cr>
vmap <leader>c : w! /tmp/buf<CR>
nnoremap <leader>v <esc>:r /tmp/buf<CR>
"nmap <leader>v <esc>:r /tmp/buf<CR>

inoremap <c-s> <Esc>:w!<CR>k

"nnoremap <silent> <F5><F5> :cd $PWD <CR> :make clean -f $PWD/*akefile <CR> :bel copen <CR>
nnoremap <silent> <F12> :cd $PWD <CR><esc> :make clean -f $PWD/*akefile <CR><esc> :bel copen <CR><esc>
"nnoremap <silent> 4 :cd $PWD <CR> :make clean -f $PWD/*akefile <CR> ::copen <CR>
"vnoremap <silent> 4 :cd $PWD <CR> :make clean -f $PWD/*akefile <CR> ::copen <CR>
"nnoremap <silent> <F6> :cd $PWD <CR> :make clean -f $PWD/*akefile <CR> ::copen <CR>
"map <silent> <F4> :cd $PWD <CR> :make clean -f $PWD/*akefile <CR> ::copen <CR> <esc> <c-w>k <esc>G
"map <silent> <F4> :cd $PWD <CR> :make clean -f $PWD/*akefile <CR> ::copen <CR> 
nnoremap <silent> <F5> :cd $PWD <CR><esc> :make -f $PWD/*akefile <CR><esc>:bel copen <CR><esc>
"map <silent> <F5> <c-l> :cd $PWD <CR> :make -f $PWD/*akefile <CR> :bel copen <CR>
"nnoremap <silent> <F5> :cd $PWD <CR> :make -f $PWD/*akefile <CR> ::copen <CR> <esc> G
"map <silent> <F5> :cd $PWD <CR> :make -f $PWD/*akefile <CR> ::copen <CR> <esc> G
"map <F4> :vsplit<CR> <C-w>l :edit<space> 
"map <F4> :vsplit<CR> <C-l> :edit<space> 
"nnoremap <silent> <F9> <Esc> :cd $PWD <CR> : !ctags -R --fields=+lS --languages=c++ --langmap=c++:+.c -h +.mk --c++-kinds=+pdx --fields=+aiKSz --extra=+q --exclude=*.c.* --exclude=*.h.* <CR> :!find $PWD/ -name "*akefile" -o -name "*.h" -o -name "*.s" -o -name "*.S">cscope.files <CR>: !cs kill -1 <CR> :!cscope -bkq <CR> :cs add cscope.out <CR>

"nnoremap <silent> <F9> <Esc> :cd $PWD <CR> :!ctags -R --fields=+lS --languages=c++ --langmap=c++:+.c -h +.mk --c++-kinds=+pdx --fields=+aiKSz --extra=+q --exclude=*.c.* --exclude=*.h.* <CR> :!find $PWD/ -name "*akefile" -o -name "*.c" -o -name "*.h" -o -name "*.s" -o -name "*.S">cscope.files <CR> : !cscope -RbkUq -f cscope.out <CR> :cs add cscope.out <CR>
"nnoremap <silent> <F9> <Esc> :cd $PWD <CR><esc> :!mkdir -p .vimp <CR><esc> :!find $PWD/ -name "*akefile" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.dts*" >./.vimp/cscope.files <CR><esc> :cd .vimp  <CR><esc> : !cscope -RbkUq -f cscope.out <CR><esc>: cs add cscope.out <CR><esc> :!ctags --fields=+lS --languages=c++ --langmap=c++:+.c -h +.mk --c++-kinds=+pdx --fields=+aiKSz --extra=+q -L -<cscope.files <CR><esc>
nnoremap <silent> <F9> <Esc> :cd $PWD <CR><esc> :!mkdir -p .vimp <CR><esc> :!find $PWD/ \( -path $PWD/arch/alpha -o -path $PWD/arch/arc -o -path  $PWD/arch/avr32 -o -path  $PWD/arch/blackfin -o -path  $PWD/arch/c6x -o -path  $PWD/arch/cris -o -path  $PWD/arch/frv -o -path  $PWD/arch/h8300 -o -path  $PWD/arch/hexagon -o -path  $PWD/arch/ia64 -o -path  $PWD/arch/m32r -o -path  $PWD/arch/m68k -o -path  $PWD/arch/metag -o -path  $PWD/arch/microblaze -o -path  $PWD/arch/mips -o -path  $PWD/arch/mn10300 -o -path  $PWD/arch/openrisc -o -path  $PWD/arch/parisc -o -path  $PWD/arch/powerpc -o -path  $PWD/arch/s390 -o -path  $PWD/arch/score -o -path  $PWD/arch/sh -o -path  $PWD/arch/tile -o -path  $PWD/arch/sparc -o -path  $PWD/arch/um -o -path  $PWD/arch/unicore32 -o -path  $PWD/arch/x86 -o -path  $PWD/arch/xtensa \) -prune -o \( -name "*akefile" -o -name "*.c" -o -name "*.C" -o -name "*.cpp" -name "*.CPP" -o -name "*.cc" -o -name "*.CC" -o -name "*.h" -o -name "*.H" -o -name "*.s" -o -name "*.S" -o -name "*.asm" -o -name "*.ASM" -o -name "*defconfig" -o -name ".config" -o -name "config.mk" -o -name "*.dts*" \) -type f -print >./.vimp/cscope.files <CR><esc> :cd .vimp  <CR><esc> : !cscope -RbkUq -f cscope.out <CR><esc>: cs add cscope.out <CR><esc> :!ctags --fields=+lS -L -<cscope.files <CR><esc>
"nnoremap <silent> <F9> <Esc> :cd $PWD <CR><esc> :!mkdir -p .vimp <CR><esc> :!find $PWD/ \( -path $PWD/arch/alpha -o -path $PWD/arch/arc -o -path  $PWD/arch/avr32 -o -path  $PWD/arch/blackfin -o -path  $PWD/arch/c6x -o -path  $PWD/arch/cris -o -path  $PWD/arch/frv -o -path  $PWD/arch/h8300 -o -path  $PWD/arch/hexagon -o -path  $PWD/arch/ia64 -o -path  $PWD/arch/m32r -o -path  $PWD/arch/m68k -o -path  $PWD/arch/metag -o -path  $PWD/arch/microblaze -o -path  $PWD/arch/mips -o -path  $PWD/arch/mn10300 -o -path  $PWD/arch/openrisc -o -path  $PWD/arch/parisc -o -path  $PWD/arch/powerpc -o -path  $PWD/arch/s390 -o -path  $PWD/arch/score -o -path  $PWD/arch/sh -o -path  $PWD/arch/tile -o -path  $PWD/arch/sparc -o -path  $PWD/arch/um -o -path  $PWD/arch/unicore32 -o -path  $PWD/arch/x86 -o -path  $PWD/arch/xtensa \) -prune -o \( -name "*akefile" -o -name "*.c" -o -name "*.C" -o -name "*.cpp" -name "*.CPP" -o -name "*.cc" -o -name "*.CC" -o -name "*.h" -o -name "*.H" -o -name "*.s" -o -name "*.S" -o -name "*.asm" -o -name "*.ASM" -o -name "*defconfig" -o -name ".config" -o -name "config.mk" -o -name "*.dts*" \) -type f -print >./.vimp/cscope.files <CR><esc> :cd .vimp  <CR><esc> : !cscope -RbkUq -f cscope.out <CR><esc>: cs add cscope.out <CR><esc> :!ctags --fields=+lS --languages=c++ --langmap=c++:+.c -h +.mk --c++-kinds=+pdx --fields=+aiKSz --extra=+q -L -<cscope.files <CR><esc>

":cs kill cscope.out <CR> 
"nnoremap <silent> <F9> <Esc> :cd $PWD <CR> :! ctags -R --c-kinds=+pdx --fields=+iaS --extra=+q <CR>




""{vbookmark
let g:vbookmark_bookmarkSaveFile=expand('$PWD/.vimp') . '/.vbookmark.mark'
"let g:vbookmark_bookmarkSaveFile=expand('$PWD') . '/.vbookmark.mark'

""}


""{Doxygen
map fd : Dox<cr>
map fj : DoxAuthor<cr>
let g:DoxygenToolkit_authorName="fred wang"
let g:DoxygenToolkit_licenseTag=" license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief "
let g:DoxygenToolkit_paramTag_pre = "@param "
let g:DoxygenToolkit_returnTag = "@return "
let g:DoxygenToolkit_briefTag_funcName = "yes"

let g:DoxygenToolkit_startCommentTag = "/************************************************************************"
let g:DoxygenToolkit_startCommentBlock = "/* "
let g:DoxygenToolkit_endCommentBlock = "*/"
let g:DoxygenToolkit_interCommentBlock = "* "
let g:DoxygenToolkit_interCommentTag = "* "
let g:DoxygenToolkit_endCommentTag = "************************************************************************/"

""}




""{ NERDTree 
"i slplit windows
" t  new tab
" o open file /dir
" x close dir
"nnoremap <silent> <F7> : NERDTreeToggle<CR> <C-w>l
nnoremap <silent> <F8> : NERDTreeToggle<CR>
"nnoremap <silent> <F7> : NERDTreeToggle<CR> <esc> <c-w>l
"nnoremap <silent> <F7> : NERDTreeToggle<CR>
"nnoremap <F7> : NERDTreeToggle<CR>
let NERDTreeWinSize=20
let g:NERDChristmasTree=1 
let g:NERDTreeShowHidden=1 
let g:NERDTreeWinPos='right'  
let g:NERDTreeHighlightCursorline=0 
let g:NERDTreeDirArrows=1
"let NERDTreeShowBookmarks=1 
let NERDTreeAutoCenter=1

"call s:initVariable("g:NERDTreeBookmarksFile", expand('$HOME') . '/.NERDTreeBookmarks')
let NERDTreeBookmarksFile=expand('$PWD') . '/.NerdBookmarks'
let NERDTreeIgnore=['.*\.o$']
let NERDTreeIgnore+=['.*\.dtb']
let NERDTreeIgnore+=['.*\.rar']
let NERDTreeIgnore+=['.*\.gz']
let NERDTreeIgnore+=['.*\.bz2']
let NERDTreeIgnore+=['.*\.xls']
let NERDTreeIgnore+=['.*\.doc$']
"let NERDTreeIgnore+=['.~lock*']
let NERDTreeIgnore+=['.*\.swp$']
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.out$']
let NERDTreeIgnore+=['.*\.so$']
"let NERDTreeIgnore+=['.*\.a$']
let NERDTreeIgnore+=['.*\.svn$']
let NERDTreeIgnore+=['.*\.bak$']
let NERDTreeIgnore+=['.*\.mark$']
"let NERDTreeIgnore+=['.*\.git*']
"source insight
let NERDTreeIgnore+=['.*\.IAB$']
let NERDTreeIgnore+=['.*\.IAD$']
let NERDTreeIgnore+=['.*\.IMB$']
let NERDTreeIgnore+=['.*\.IMD*']
let NERDTreeIgnore+=['.*\.PFI*']
let NERDTreeIgnore+=['.*\.PO*']
let NERDTreeIgnore+=['.*\.PR*']
let NERDTreeIgnore+=['.*\.PRI*']
let NERDTreeIgnore+=['.*\.PS*']
let NERDTreeIgnore+=['.*\.WK3*']
""}


""{ Tagbar
let g:tagbar_width = 20      " tagbar's width, default 20
let g:tagbar_ctags_bin='ctags'
let g:tagbar_left = 1     " on the right side
let g:tagbar_autoshowtag=0 
let g:tagbar_autoclose = 0
let g:tagbar_autopreview = 0
let g:tagbar_autofocus = 1
let g:tagbar_previewwin_pos = "botleft"
let g:tagbar_autoshowtag = 1
let g:tagbar_sort = 0

nnoremap <silent> <F7> :TagbarToggle<CR>
""}


""{   cscope 
"s	查找本 C 符号(可以跳过注释)
"g	查找本定义
"d	查找本函数调用的函数
"c	查找调用本函数的函数
"t	查找本字符串
"e	查找本 egrep 模式
"f"查找本文件
"i查找包含本文件的文件
set cscopequickfix=s-,c-,d-,i-,t-,e-
"set cscopequickfix=s-,g-,c-,d-,i-,t-,e-
nmap <C-k>s :cs find s <C-R>=expand("<cword>")<CR><CR>:bel copen<CR><CR>
nmap <C-k>g :cs find g <C-R>=expand("<cword>")<CR><CR>:bel copen<CR><CR>
nmap <C-k>c :cs find c <C-R>=expand("<cword>")<CR><CR>:bel copen<CR><CR>	
nmap <C-k>t :cs find t <C-R>=expand("<cword>")<CR><CR>:bel copen<CR><CR>	
nmap <C-k>e :cs find e <C-R>=expand("<cword>")<CR><CR>:bel copen<CR><CR>	
nmap <C-k>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:bel copen<CR><CR>	
nmap <C-k>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>:bel copen<CR><CR>	
nmap <C-k>d :cs find d <C-R>=expand("<cword>")<CR><CR>:bel copen<CR><CR>
" 解决cscope与tag共存时ctrl+]有时不正常的bug  
 nmap <C-]> :tj <C-R>=expand("<cword>")<CR><CR>
""}


""{

" Comment, 'cc'
" Toggle, 'c<space>'
" Minimal, 'cm'
" Nested, 'cn'
" To EOL, 'c$'
" Invert, 'ci'
" Sexy, 'cs'
" Yank then comment, 'cy'
" Append, 'cA'
" -Sep-, ''
" Left aligned, 'cl'
" Left and right aligned, 'cb'
" -Sep2-, ''
" Uncomment, 'cu'
" Switch Delimiters, 'ca'

""}


""{ Use neocomplcache.  
"**********NeoComplCache************************"

"let g:neocomplcache_enable_smart_case = 1  
"" Use camel case completion.  
"let g:neocomplcache_enable_camel_case_completion = 1  
"" Use underbar completion.  
"let g:neocomplcache_enable_underbar_completion = 1  
"" Set minimum syntax keyword length.  
"let g:neocomplcache_min_syntax_length = 3  
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'  
"  
"let g:neocomplcache_enable_auto_select = 1
"let g:NeoComplCache_DisableAutoComplete = 1
"" Define dictionary.  
"let g:neocomplcache_dictionary_filetype_lists = {  
"    \ 'default' : '',  
"    \ 'vimshell' : $HOME.'/.vimshell_hist',  
"    \ 'scheme' : $HOME.'/.gosh_completions'  
"    \ }  
"  
"" Define keyword.  
"if !exists('g:neocomplcache_keyword_patterns')  
"  let g:neocomplcache_keyword_patterns = {}  
"endif  
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'  
"  
"" Recommended key-mappings.  
"" <CR>: close popup and save indent.  
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"  
" <TAB>: completion.  
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"  
" <C-h>, <BS>: close popup and delete backword char.  
""}

""{
" OmniCppComplete
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest
highlight Pmenu    guibg=darkgrey  guifg=black 
highlight PmenuSel guibg=lightgrey guifg=black
set completeopt=menuone,menu,longest,preview
""}

""{
"OmniCppComplete
"let OmniCpp_NamespaceSearch = 2
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1 
"let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
""let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
""let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
""let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"" 自动关闭补全窗口 
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
"set completeopt=menuone,menu,longest
"highlight Pmenu    guibg=darkgrey  guifg=black 
"highlight PmenuSel guibg=lightgrey guifg=black
""}

""{**********NeoComplCache************************"

"let g:neocomplcache_dictionary_filetype_lists = {
"	\ 'default' : '',
"	\ 'vimshell' : $HOME.'/.vimshell_hist',
"	\ 'scheme' : $HOME.'/.gosh_completions'
"		\ }
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_auto_select = 1
let g:NeoComplCache_DisableAutoComplete = 0
"类似autocomplpop, ncc默认自动弹出匹配项目, 不喜欢可以关掉.
"let g:NeoComplCache_DisableAutoComplete = 1
"如果安了supertab, 把匹配模式改成context
let g:SuperTabDefaultCompletionType="context"
let g:neocomplcache_enable_quick_match = 1
"let g:neocomplcache_skip_auto_completion_time = ''
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"



"inoremap <expr><space>  pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-Y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()
""inoremap <expr><Enter>  pumvisible() ? neocomplcache#close_popup()."\<C-n>" : "\<Enter>"
"inoremap <expr><Enter>  pumvisible() ? "\<C-u>" : "\<Enter>""


"inoremap <expr><Enter>  pumvisible() ? neocomplcache#close_popup()."\<C-n>" : "\<Enter>"
"inoremap <expr><Enter>  pumvisible() ? "\<C-U>" : "\<Enter>""
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

""}

"""{ // The switch of the Source Explorer 
"nmap <F6> :SrcExplToggle<CR> 
"
"" // Set the height of Source Explorer window 
"let g:SrcExpl_winHeight = 5 
"
"" // Set 100 ms for refreshing the Source Explorer 
"let g:SrcExpl_refreshTime = 500 
"
"" // In order to avoid conflicts, the Source Explorer should know what plugins 
"" // except itself are using buffers. And you need add their buffer names into 
"" // below listaccording to the command ":buffers!" 
"let g:SrcExpl_pluginList = [ 
"        \ "__Tag_List__", 
"        \ "_NERD_tree_" 
"    \ ] 
"
"" // Enable/Disable the local definition searching, and note that this is not 
"" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
"" // It only searches for a match with the keyword according to command 'gd' 
"let g:SrcExpl_searchLocalDef = 1 
"
"""}



"记住 最后一次编辑位置 
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

set mps+=<:>            "让<>可以使用%跳转  
"set path=.
"set path+=/usr/include
set path+=$_KERNINC
set path+=../**/**


"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4
"" build tags of your own project with Ctrl-F12
"map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set statusline=%<%f\ [%{&fileencoding}]\ %h%m%r%=0x%B\ \ %-16.(%l-%L,%c%V%)\ %P
set tags=$PWD/.vimp/tags
"set tags=$PWD/tags;


