set number

set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8

set showmatch
set sw=2
set relativenumber
set laststatus=2

call plug#begin('~/.vim/plugged/')

Plug 'morhetz/gruvbox'
Plug 'klen/python-mode'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/indentpython.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tmhedberg/SimpylFold'
Plug 'majutsushi/tagbar'
Plug '/jmcantrell/vim-virtualenv'

" Dart Support
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'


Plug 'vim-airline/vim-airline'
call plug#end()

" Enable folding
"
"
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flagging Unnecessary Whitespace

" Temas

" IDE

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let mapleader=" "

let g:SimpylFold_docstring_preview=1

let g:kite_supported_languages = ['python', 'javascript', 'go']
let g:kite_tab_complete=1
let g:kite_snippets=0
set belloff+=ctrlg  " if vim beeps during completion



set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text
set completeopt+=preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
let g:kite_previous_placeholder = '<C-H>'
let g:kite_next_placeholder = '<C-L>'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" search ctrlp with regex by default
let g:ctrlp_regexp_search = 1
let g:ctrlp_clear_cache_on_exit = 0

" Autocomplete bundle
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
map <Enter> o<ESC>
map <S-Enter> O<ESC>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

nmap <F8> :TagbarToggle<CR>


" Mostrar los Caracteres en blanco
nnoremap <F2> :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>


let python_highlight_all=1
let g:python_host_prog = '/usr/bin/python2.7'

" Dart config
let g:lsc_auto_map = v:true

" Ymc no show error
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

