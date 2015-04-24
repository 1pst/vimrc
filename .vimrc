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
Bundle 'LeaderF'


Bundle 'echofunc.vim'
Bundle 'scrooloose/syntastic'
Bundle 'neocomplcache'
Bundle 'OmniCppComplete'
Bundle 'SnipMate'


""""Bundle 'kien/ctrlp.vim.git'
""""Bundle 'Valloric/YouCompleteMe'
""""Bundle 'multi.vim'
""""Bundle 'vim-scripts/AutoClose'
""""Bundle 'supertab'
""""Bundle 'code_complete'
""""Bundle 'superSnipMate'
""""Bundle 'srcexpl'

let mapleader=","
set backspace=indent,eol,start
"set fileencodings=cp936,utf-8,gbk,ucs-bom
set fileencodings=utf-8,gbk,ucs-bom,cp936
set nu
set ai
"Place case labels N characters from the indent of the switch()
set cinoptions=:0
set cindent
set mouse=a
set tabstop=8
set shiftwidth=8
set incsearch "match in time
set hlsearch "
"set ignorecase
set ignorecase smartcase "smartcase，
set filetype=diff "default file type detection
set showmatch  "
set ruler "show the line and column number of the cursor position
set autochdir "auto change dir
set autoread "auto reload
set foldmethod=manual
set dir=/tmp
syntax on
filetype plugin indent on
let tagfiles=$VIMP_PATH . '/tags'



""{ control key map
map <C-s> <Esc>:w!<CR>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
nnoremap <c-l> <c-w>w
nnoremap <c-h> <c-w>W
map <C-w> :q<CR>
nnoremap<C-w> <esc>:q<CR>
vnoremap<C-w> <esc>:q<CR>
inoremap<C-w> <esc>:q<CR>
inoremap <C-e> <esc>gUiwea
inoremap <silent> <C-d> <C-R>=Enter_lf()<CR>
inoremap <silent> <C-t> <C-R>=Local_bracket()<CR>
inoremap <C-v> <esc>"+gpi
inoremap <c-s> <Esc>:w!<CR>k
vnoremap <C-c> "+y
nmap <c-d> :tselect <CR>
"nnoremap <c-m> :TagbarOpen fj <CR>
""}

""{ leader key map
nmap <leader>y <esc>:YRShow<CR>
nmap <leader>w :w!<CR>
vmap <leader>w <esc>:w!<CR>


nmap <leader>1 :tabnew <cr>:edit $PWD <CR>
nmap <leader>2 :bel sp $PWD <CR>
nmap <leader>3 :vsplit<CR> <C-l> :edit <C-R>=expand("<cword>")<CR>
nmap <leader>4 <esc>:q!<CR>
vmap <leader>4 <esc>:q!<CR>
nmap <leader>5 <esc>:set readonly<CR>
nmap <leader>7 :set fileformat=unix<CR>
nmap <leader>9 <esc>:set modifiable<CR> <esc>:colorscheme default<cr>
vmap <leader>9 <esc>:set modifiable<CR> <esc>:colorscheme default<cr>

nmap <leader>d <esc>:diffthis<CR> <esc>:colorscheme delek<cr>
vmap <leader>d <esc>:diffthis<CR> <esc>:colorscheme delek<cr>
nmap <leader>h <esc>:A<CR>
nmap <leader>b <esc>:call Tar_pwd()
nmap <leader>r <esc>:!rm -rf<space>
nmap <leader>t <esc>:bel sp <CR>:cd $PWD<CR>:Leaderf <cr>
nmap <Leader>e <esc>:cd $PWD <CR> :Ack --ignore-dir==.git --type=nohtml <C-R>=expand("<cword>")<CR>
nmap <Leader>f <esc>:cd $PWD <CR> :vim <C-R>=expand("<cword>")<CR> ** <space>
"nmap <leader>f <esc>:
nnoremap <silent> <leader>g :call AutoToggleCurline()<CR>
nnoremap <silent> <leader>z :call AutoToggleList()<CR>
nnoremap <silent> <leader>m :call AutoToggleFiletype()<CR>
""}


""{ shit key map



nmap <s-tab> <esc>:tabNext<CR>



""}


""{ alt remap
nmap 1 <ESC>:%! xxd -r<CR>
nmap 4 <ESC>:set modifiable<CR> <ESC>:%! xxd<CR>

nmap 5 <ESC>:cd $PWD <CR> :!echo -e "\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n\# @file Makefile\n\# @brief Tell make how to compile and link a program.\n\# @author fred wang\n\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n\n\\nCROSS = \nCC ?= \$(CROSS)gcc\napp = \n\n\#SRCDIRS = \n\#src = \$(foreach dir, \$(SRCDIRS), \$(wildcard \$(dir)/*.c))\n\#src = \$(foreach dir, \$(wildcard *), \$(wildcard \$(dir)/Makefile))\n\nsrc = \n\nobjs = \$(src:.c=.o) \n\nCFLAGS = -g -Wall \n\n\%.o : \%.c \n\t\$(CC) \$(CFLAGS) -c $< -o \$@ \n\n\$(app) : \$(objs) \n\t\$(CC) \$(CFLAGS) \$^ -o \$@ \n\nclean:\n\t@rm -rf \$(objs) \$(app)\n\t@echo clean finished.\n\n">Makefilet <cr>:bel split $PWD/Makefilet<cr><cr>

"auto generated gitignore
nmap 6 <ESC>:cd $PWD <CR> :!echo -e "\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n\# @file .gitignore\n\# @brief Tell git which files to ignore in your project dir\n\# @author fred wang\n\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n\n\#vim files \n*.swp\n*.mark\ntags\ncscope.*\n\n\n\n \#backup files\n*.bak \n\n\n\# compiled files \n*.o\n*.elf\n*.ko\n*.so\n*.com\n*.class\n*.dll\n*.exe\n\n\n\n\n\# packages \n*.7z\n*.dmg\n*.gz\n*.iso\n*.jar\n*.rar\n*.tar\n*.zip\n*.bz2\n*.xz\n\n\n\n\# logs and databases \n*.sql\n*.sqlite\n\n\n\n\n\#self file\n\#.gitignore\n\n\n\n\n\# os generated files\#\n\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\nThumbs.db\n\#project files\n *.project\n\n\n\n\#source insight\n*.IAB\n*.IAD\n*.IMB\n*.IMD\n*.PFI\n*.PO\n*.PR\n*.PRI\n*.PS\n*.SearchResults\n*.WK3\n\n\#else\n\n*.mcs\n*.mptags\n*.tagsrc\n*.O\n*.cof\n*.err\n*.lst\n*.map\n*.dep\n*.as\n*.hxl\n*.pre\n*.p1\n*.rlf\n*.sym\n*.sdb\n*.obj\n\n\n\n\#current project \n\n\n\n\#funclist\n\n\n\n\n\n\n\n\#\#\#\#\3\n\!*.c\n\!*.h\n \n\n">gitignore <cr>:bel split $PWD/gitignore<cr><cr>

nmap 2 <ESC>:prev<CR>
nmap 3 <ESC>:next<CR>

"""custom variable
nmap 7 <ESC>:cscope add $VIMP_PATH/cscope.out <cr>

nmap 9 <ESC>:cs kill -1 <CR><esc> :!rm -rf $VIMP_PATH/*cscope* $VIMP_PATH/tags <CR><esc>

nmap _ <ESC>:cd ~ <cr> <esc>:!tar cjf vim.tar.bz2 .vim ;nautilus ~ <CR><esc>

nmap + <ESC>:!echo "alias vi='export VIMP_PATH=\$PWD/.vimp; export _KERNINC=/media/working/prj/imx6/kernel/include;vim'" >> ~/.bashrc


""}

""{ normal comb key map
vmap mc : w! /tmp/buf<CR>
nnoremap mv <esc>:r /tmp/buf<cr>
nmap me <esc>:cs find t <C-R>=expand("<cword>")<CR>
nmap mc <esc>:bel copen<cr>
""Doxygen
map fd : Dox<cr>
map fl : DoxAuthor<cr>
""}

""{ function key map
nmap <F2> :cp<CR>
nmap <F3> :cn<CR>
map <F4> :! nautilus . <CR><ESC>
"nnoremap <silent> <F5><F5> :cd $PWD <CR> :make clean -f $PWD/*akefile <CR> :bel copen <CR>
nnoremap <silent> <F12> :cd $PWD <CR><esc> :make clean -f $PWD/?akefile <CR><esc> :bel copen <CR><esc>
nnoremap <silent> <F5> :cd $PWD <CR><esc> :make -f $PWD/?akefile <CR><esc>:bel copen <CR><esc>
"echo "Attention: according to kernel,only generate arch of ARM index"
nnoremap <silent> <F9> <Esc>:cd $PWD <CR><esc> :!mkdir -p $VIMP_PATH <CR><esc> :!find $PWD/ \( -path $PWD/arch/alpha -o -path $PWD/arch/arc -o -path  $PWD/arch/avr32 -o -path  $PWD/arch/blackfin -o -path  $PWD/arch/c6x -o -path  $PWD/arch/cris -o -path  $PWD/arch/frv -o -path  $PWD/arch/h8300 -o -path  $PWD/arch/hexagon -o -path  $PWD/arch/ia64 -o -path  $PWD/arch/m32r -o -path  $PWD/arch/m68k -o -path  $PWD/arch/metag -o -path  $PWD/arch/microblaze -o -path  $PWD/arch/mips -o -path  $PWD/arch/mn10300 -o -path  $PWD/arch/openrisc -o -path  $PWD/arch/parisc -o -path  $PWD/arch/powerpc -o -path  $PWD/arch/s390 -o -path  $PWD/arch/score -o -path  $PWD/arch/sh -o -path  $PWD/arch/tile -o -path  $PWD/arch/sparc -o -path  $PWD/arch/um -o -path  $PWD/arch/unicore32 -o -path  $PWD/arch/x86 -o -path  $PWD/arch/xtensa \) -prune -o \( -name "*akefile" -o -name "*.c" -o -name "*.C" -o -name "*.cpp" -name "*.CPP" -o -name "*.cc" -o -name "*.CC" -o -name "*.h" -o -name "*.H" -o -name "*.s" -o -name "*.S" -o -name "*.asm" -o -name "*.ASM" -o -name "*defconfig" -o -name ".config" -o -name "config.mk" -o -name "*.dts*" -o -name "*.lua" \) -type f -print >$VIMP_PATH/cscope.files <CR><esc> :cd $VIMP_PATH  <CR><esc> : !cscope -RbkUq -f cscope.out <CR><esc>: cs add cscope.out <CR><esc> :!ctags --fields=+lS -L -<cscope.files <CR><esc>
":cs kill cscope.out <CR> 
"nnoremap <silent> <F9> <Esc> :cd $PWD <CR> :! ctags -R --c-kinds=+pdx --fields=+iaS --extra=+q <CR>
""}



""{vbookmark
let g:vbookmark_bookmarkSaveFile=$VIMP_PATH . '/.vbookmark.mark'
"let g:vbookmark_bookmarkSaveFile=expand('$PWD') . '/.vbookmark.mark'
""}

""{ctrlp
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = '0'

""}

""{Leaderf
"exec 'nnoremap <silent>' g:Lf_ShortcutF ':<C-U>Leaderf<CR>'
"exec 'nnoremap <silent>' g:Lf_ShortcutB ':<C-U>LeaderfBuffer<CR>'
let g:Lf_ShortcutF = '<leader>='
let g:Lf_ShortcutB = '<leader>6'
let g:Lf_WindowPosition = 0
let g:Lf_CacheDiretory = '/tmp/lf'
""}

""{Doxygen
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
"let NERDTreegnore+=['.*\.git*']
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
"s	查找本 C 符号
"g	查找本定义
"d	查找本函数调用的函数
"c	查找调用本函数的函数
"t	查找本字符串
"e	查找本 egrep 模式
"f  查找本文件
"i  查找包含本文件的文件
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


""local last edit
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

set mps+=<:>            "让<>可以使用%跳转  
"set path=.
"set path+=/usr/include
set path+=$PWD
set path+=$_KERNINC
"set path+=../**/**


"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4
set statusline=%<%f\ [%{&fileencoding}]\ %h%m%r%=0x%B\ \ %-16.(%l-%L,%c%V%)\ %P
set tags=$VIMP_PATH/tags
"set tags=$PWD/tags;
