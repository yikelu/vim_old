" Pathogen stuff
filetype off
call pathogen#infect()
call pathogen#helptags()

" Filetype stuff
filetype indent on
filetype plugin on
set ofu=syntaxcomplete#Complete
syntax on

set macmeta

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

" Pymode baby!!!!
let g:pymode_rope_always_show_complete_menu = 1
let g:pymode_indent = 1
let g:pymode_syntax_space_errors = 0
let g:pymode_lint_checker = "pylint"

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
set guifont=Anonymous\ Pro\ for\ Powerline:h12'
set guioptions-=l
set guioptions-=r
set guioptions-=L
set guioptions-=R
set guicursor+=a:blinkon0

"set rtp+=/Users/yikelu/.vim/bundle/powerline/bindings/vim
set laststatus=2
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set number

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

if has("gui_running")
    colorscheme kib_darktango
endif
