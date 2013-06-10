"set background=dark

"colorscheme inkpot
"colorscheme twilight2
"colorscheme elflord
"colorscheme railscasts
"colorscheme dante
"colorscheme ir_black
"colorscheme candycode
colorscheme jellybeans
set t_Co=256
if has('gui_running')
  set guifont=Monaco:h11
  "colorscheme jellybeans
endif

syntax on
set mouse=a         " enable mouse
set nocompatible    " use vim defaults
set ls=2            " always show status line
set tabstop=4       " number of spaces for tab character
set shiftwidth=4   " number of spaces to (auto) indent
"set softtabstop=2   " another tab change that I don't remember
"set expandtab       " tabs are converted to spaces
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set showmode        " display the current mode
set hlsearch        " highlight searches
set incsearch       " do incremental search
set ruler           " show the cursor position all the time
set laststatus=2
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set numberwidth=4   " line numbering takes up to 4 spaces
set ignorecase      " ignore case when searching
set linebreak       " linebreaks
set wrap            " set wrap for lines
set autoindent      " auto indentation by default

"set nowrap          " stop lines from wrapping
"set noignorecase    " don't ignore case
set smartcase       " do smart case matching
set title           " show title in the console title bar
set ttyfast         " smoother changes
set bs=2            " backspace can delete previous characters
set backspace=indent,eol,start " more backspace settings
set modeline        " last lines in document sets vim mode
set modelines=3     " number of lines checked for modelines
set shortmess=atI   " abbreviate messages
set nostartofline   " don't jump to first character when paging
set undolevels=200
"set co=100
"set lines=60

"set t_Co=256
set viminfo='20,<50,s10,h
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
let python_highlight_all=1
let python_highlight_indent_errors=0
let python_highlight_space_errors=0
filetype plugin indent on " turn on the indent plugins

"autocmd FileType djangohtml,html,xhtml,xml,php source ~/.vim/plugin/closetag.vim
autocmd FileType djangohtml,html,xhtml,xml,php source /usr/share/vim/vim72/plugin/closetag.vim

let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1

" syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/ "recursively searches directory for 'tags' file

set sm  " show matching braces

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'     " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1      " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1              " Close when something's selected
let Tlist_Use_Right_Window = 1             " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1         " Close folds for inactive files

" useful keyboard-shortcuts
map <D-1> :marks 
map <D-2> :NERDTreeToggle<CR>
map <D-3> :TlistToggle<CR>
map <D-4> :noh<CR>

if has("autocmd")
  " code completion
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

  " code indentation
  autocmd FileType ruby setlocal tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType fbml setlocal filetype=htmldjango
  autocmd FileType html setlocal filetype=htmldjango tabstop=2 shiftwidth=2 softtabstop=2

  " some extra filetypes
  au BufNewFile,BufRead *.mustache setfiletype mustache
  au BufNewFile,BufRead *.html setfiletype htmldjango
  au BufNewFile,BufRead *.mustache setlocal autoindent
  au BufNewFile,BufRead *.php setlocal autoindent
  au BufNewFile,BufRead *.go setfiletype go
  au BufNewFile,BufRead *.feature setfiletype ruby
  au BufNewFile,BufRead *.ru setfiletype ruby
  au BufNewFile,BufRead .vimrc setlocal tabstop=4 shiftwidth=4 softtabstop=4
  au BufNewFile,BufRead Gemfile setfiletype ruby
endif

" shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" use the same symbols as TextMate for tabstops and EOLs
"set listchars=tab:‚Äö√±‚àè\ ,eol:¬¨¬®

" force myself to use hjkl (LOLs)
"map <down> iisuckatvi
"map <left> iisuckatvi
"map <right> iisuckatvi
"imap <up> isuckatvi
"imap <down> isuckatvi
"imap <left> isuckatvi
"imap <right> isuckatvi

set tabstop=4
set shiftwidth=4
set expandtab



"NEOBUNDLE SHIT
set nocompatible               " Be iMproved

 if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Let NeoBundle manage NeoBundle

 " Recommended to install
 " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile

 filetype plugin indent on     " Required!
 "
 " Brief help
 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

 " Installation check.
