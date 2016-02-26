set nocompatible        " do not make vim compatible with vi.
set encoding=utf-8
set fileencodings=utf-8
syntax enable
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

set softtabstop=4       " number of spaces in tab when editing
set tabstop=4           " number of visual spaces per TAB
set expandtab           " tabs are spaces

set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

" Mouse
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" possibilita colar em outra janela
vmap <F4> "+y"

"'Ctrl+t' abre uma nova aba
nmap <C-t> :tabnew<CR>
""'Ctrl+PageUp' pula para próxima aba *
nmap <C-n> :tabnext<CR>
"'Ctrl+PageDown' volta para aba anterior *
nmap <C-p> :tabprevious<CR>
""'Ctrl+e' fecha a aba corrente
nmap <C-w> :tabclose<CR>

" Navigation through split windows.
nmap <C-Up> :wincmd k<CR>
nmap <C-Down> :wincmd j<CR>
nmap <C-Left> :wincmd h<CR>
nmap <C-Right> :wincmd l<CR>

" Pathogen load
" filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax enable

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ["python"],
                            \ 'passive_filetypes': ["javascript"] }

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['pep8', 'pyflakes']
