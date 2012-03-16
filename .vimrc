""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"          _
"      __ | \
"     /   | /
"     \__ | \
" by Amix - http://amix.dk/
"
"
" Sections:
" ----------------------
" General
" Colors and Fonts
" Fileformats
" VIM userinterface
"    Statusline
" Visual
" Moving around and tabs
" General Autocommands
" Parenthesis/bracket expanding
" General Abbrevs
" Editing mappings etc.
" Command-line config
" Buffer realted
" Files and backups
" Folding
" Text options
"    Indent
" Spell checking
" Plugin configuration
"    Yank ring
"    File explorer
"    Minibuffer
"    Tag list (ctags) - not used
"    LaTeX Suite things
" Filetype generic
"    Todo
"    VIM
"    HTML related
"    Ruby & PHP section
"    Python section
"    Cheetah section
"    Vim section
"    Java section
"    JavaScript section
"    C mappings
"    SML
"    Scheme bindings
" Snippets
"    Python
"    javaScript
" Cope
" MISC
"
"  Tip:
"   If you find anything that you can't understand than do this:
"   help keyword OR helpgrep keywords
"  Example:
"   Go into command-line mode and type helpgrep nocompatible, ie.
"   :helpgrep nocompatible
"   then press <leader>c to see the results, or :botright cw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Basicas, color de tema, encoding,tabs etc
set t_Co=256
"molokai, matrix, moria, neverness, solarized, typofree
colorscheme solarized
set gfn=Inconsolata:h14
set encoding=utf-8
set nocompatible
filetype on
filetype plugin on 
set hlsearch
set ignorecase
set incsearch
set textwidth=0
set nowrap
set number
set scrolljump=5
set scrolloff=3
set backspace=start,eol
set wildmode=longest:list,full
noremap  :!php -l %
set showmatch
syntax on
"======= Diccionarios =================
set spell
set spelllang=es
map <C-d> :set spelllang=es, spell! <CR>
"======================================
"======== Tabulaciones ================
set autoindent
"set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
"======================================
"
" ======== Guardar  y cerrar ==========
 map <C-a> :w <CR>
 map <C-x> :q <CR>
 map <C-z> :q!<CR>
 "=======================================
"=========== pestanias =================
map <C-t> :tabnew <CR>
"map <C-Space> :tabNext <CR> 
map <C-Right> :tabnext <CR>
map <C-Left> :tabNext <CR>
"======================================
"========= latex ======================
set grepprg=grep\ -nH\ $* 
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='evince'
let g:Tex_DefaultTargetFormat='pdf'
"======================================
"================= java ===============
":Setlocal completefunc=javacomplete # CompleteParamsInfo
"======================================


"============== NERDTree ========================
map <F2> :NERDTreeToggle <CR>
set autochdir
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
let NERDTreeDirArrows=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
let g:NERDTreeQuitOnOpen=1
"noremap <F3> :NERDTreeToggle<cr><c-w>h
"=================================================
"
"===============  titulo de ventana ============== 
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\ " file name
  set titlestring+=%h%m%r%w " flags
  set titlestring+=\ -\ %{v:progname} " program name
  set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " working directory
endif

"=================================================

"========= Prolija linea de estado ==========
set laststatus=2
set statusline=\  
set statusline+=%<%f%h%m%r%h%w%y
set statusline+=\ [%{strlen(&ft)?&ft:'none'},%{&enc},%{&ff}]
set statusline+=%=  
set statusline+=%P\ c:%c%V\ l:%l,%L
"===============================================

"============== soporte python ====================
autocmd FileType python setlocal omnifunc=pythoncomplete
autocmd FileType python setlocal expandtab shiftwidth=2 tabstop=8 formatoptions+=croq softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
let python_highlight_all=3
let python_highlight_exceptions=1
let python_highlight_builtins=1
let python_highlight_indents=1
autocmd FileType pyrex setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType python let g:indent_guides_guide_size = 1
autocmd BufRead *.py set smartindent
autocmd FileType python set omnifunc=pythoncomplete
"========================================================================

"============= CloseTag. Intelligently close HTML tags ==================
 autocmd FileType html,htmldjango,jinjahtml,eruby,mako let
 "b:closetag_html_style=1
 autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source
 " ~/.vim/bundle/closetag/plugin/closetag.vim
"=================================================================

"====================== SuperTab ==========================
 let g:SuperTabDefaultCompetionType="context"
"==========================================================

"tipos de archivo
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set omnifunc=pythoncomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

