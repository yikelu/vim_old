" Pathogen stuff
filetype off
call pathogen#infect()
call pathogen#helptags()

" Filetype stuff
filetype indent on
filetype plugin on
set ofu=syntaxcomplete#Complete
syntax on


" VIM Python IDE Stuff
set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList

"au FileType python set omnifunc=RopeCodeAssist
let g:SuperTabDefaultCompletionType = 'context'

let g:SuperTabLongestHighlight = 0

set completeopt=longest,menuone,preview

map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\.pyc$']

" Pymode baby!!!!
let g:pymode_rope_always_show_complete_menu = 1
let g:pymode_indent = 1
let g:pymode_syntax_space_errors = 0
let g:pymode_lint_checker = "pylint"
let g:pymode_paths = [$HOME . "/anaconda/lib/python2.7", $HOME . "/anaconda/lib/python2.7/site-packages"]

" Tab based stuff
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set tw=79
set fo+=t
au FileType python set fo+=t

" Other indents
set autoindent
set smartindent

" Options for minibufexpl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplForceSyntaxEnable = 1

" Auto complete with tab
"function! CleverTab()
"    if pumvisible()
"        return "\<C-N>"
"    endif
"    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"        return "\<Tab>"
"    elseif exists('&omnifunc') && &omnifunc != ''
"        return "\<C-X>\<C-O>"
"    else
"        return "\<C-N>"
"    endif
"endfunction
"inoremap <Tab> <C-R>=CleverTab()<CR>
"
"set completeopt=menu,longest
"
" Misc
set ruler
set autoread

set showmatch
set hlsearch
set backspace=2
set incsearch
set guioptions-=l
set guioptions-=r
set guioptions-=L
set guioptions-=R
set guicursor+=a:blinkon0

set wildmode=longest,list,full " normal tab completion
set wildmenu

"set rtp+=/Users/yikelu/.vim/bundle/powerline/bindings/vim
set laststatus=2

set statusline=[%m%t]\       "modified? tail of the filename
set statusline+=[%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

"hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
" GVim only
if has("gui_running")
    set number
    colorscheme kib_darktango
    hi link EasyMotionTarget Identifier
endif

" Mac Section
if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin"
        set macmeta
        set guifont=Anonymous\ Pro\ for\ Powerline:h12'
    else
        set guifont=Terminus\ 9
    endif
endif

set list lcs=tab:\┊\ 

let g:indentLine_indentLevel = 4
let g:indentLine_char = "┊"
let g:indentLine_color_gui = "gray30"

map <F2> :IndentLinesToggle<CR>:IndentLinesToggle<CR>

cabbr ipy ConqueTermSplit ipython
cabbr ipyv ConqueTermVSplit ipython
cabbr ypy ConqueTermSplit ypy
cabbr ypyv ConqueTermVSplit ypy

let $PYTHONPATH = $HOME . '/anaconda/lib/python2.7' 
let $PYTHONPATH = $HOME . '/anaconda/lib/python2.7/site-packages:' . $PYTHONPATH 

let g:syntastic_python_checkers = []
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
