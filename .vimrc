"set nocompatible		" do not make vim compatible with vi.

colorscheme desert

set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file

set hlsearch            " highlight search terms
set incsearch           " search as characters are entered
set ignorecase          " ignore case in searches...
set smartcase           " ...but not really. Case sensitive if capitals are included.
set wrapscan            " Set the search scan to wrap around the file

set ruler               " display coordinates in status bar
set showcmd             " display unfinished commands
set showmatch           " show matching bracket (briefly jump)
set showmode            " display the current mode in the status bar
set title               " show file in titlebar
set scrolloff=3         " When the page starts to scroll, keep the cursor 3 lines from top/bottom

set softtabstop=4   	" number of spaces in tab when editing
set tabstop=4			" number of visual spaces per TAB
set expandtab       	" tabs are spaces

set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax enable
