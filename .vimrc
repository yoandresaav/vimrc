set number

set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8

set showmatch
set sw=4
set shiftwidth=4
set tabstop=4
set expandtab
set relativenumber
set laststatus=2
set softtabstop=4


call plug#begin('~/.vim/plugged/')

Plug 'morhetz/gruvbox'
Plug 'klen/python-mode'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/indentpython.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe'
" Checa la sintaxis
" Plug 'vim-syntastic/syntastic'
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
Plug 'jmcantrell/vim-virtualenv'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'ervandew/supertab'

" Start Screen
" Plug 'mhinz/vim-startify'
"

" Dart Support
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'

" React support
"
Plug 'chemzqm/vim-jsx-improve'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
" Snippets
" ES2015 code snippets
Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'javascript.jsx'] }

" React code snippets
Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx'] }

" Ultimate snippet solution
Plug 'SirVer/ultisnips'

" Snippet files for various programming languages
Plug 'honza/vim-snippets'
Plug 'dense-analysis/ale'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'frazrepo/vim-rainbow'

Plug 'jiangmiao/auto-pairs'
Plug 'hail2u/vim-css3-syntax'

Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hail2u/vim-css3-syntax'

" Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Alternar entre archivos
Plug 'kana/vim-altr'  " Altern between files

" html plugins
Plug 'mattn/emmet-vim'

Plug 'Yggdroot/indentLine'

call plug#end()


" Enable folding
"
"
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.js,*.htm,*.css
    \ set tabstop=4 softtabstop=4 shiftwidth=2


" Python Config
au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab smartindent fileformat=unix

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Autocomplete config
"
"
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Fl:wagging Unnecessary Whitespace

" Temas

" IDE
"
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

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


"set completeopt=menuone,preview
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

" Config zfz
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
let g:ackprg = 'ag --nogroup --nocolor --column'
set rtp+=/usr/local/opt/fzf

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Snnipet configuration
" Trigger configuration. You need to change this to something else than <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsExpandTrigger="<ctr-l>"
nmap <Leader>l :UltiSnipsExpandTrigger<CR>

" YCM Config
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
" let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string


" SuperTab
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

let g:ale_linters = {'javascript': ['eslint'],}

"let g:deoplete#enable_at_startup = 1

" rainbow
let g:rainbow_active = 1

" Auto Pair []{} diseable
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Emoji shortcuts
ab :checked: ✅
ab :warning: ⚠
ab :bulb: 💡
ab :pushpin: 📌
ab :bomb: 💣
ab :pill: 💊
ab :construction: 🚧
ab :pencil: 📝
ab :point_right: 👉
ab :book: 📖
ab :link: 🔗
ab :wrench: 🔧
ab :info: 🛈
ab :telephone: 📞
ab :email: 📧
ab :computer: 💻
ab :smile: 😅
ab :smw: 😉
ab :smal: 🙃
ab :smmol: 😤
ab :smstar: 🤩
ab :smcump: 🥳
ab :look: 👈
ab :ok: 👍
ab :style: 💄
ab :man: 👨
ab :eyes: 👀
ab :calab: 🎃

" Config CTRLP Find
set wildignore+=*/tmp/*,*/node_modules/*,node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|target|dist|migrations)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ }

" config multiples cursores
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)  
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

" Config start screen 
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
"
"function! s:gitModified()
"    let files = systemlist('git ls-files -m 2>/dev/null')
"    return map(files, "{'line': v:val, 'path': v:val}")
"endfunction

" same as above, but show untracked files, honouring .gitignore
"function! s:gitUntracked()
"    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
"    return map(files, "{'line': v:val, 'path': v:val}")
"endfunction

"let g:startify_lists = [
 "       \ { 'type': 'files',     'header': ['   MRU']            },
 "       \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
 "       \ { 'type': 'sessions',  'header': ['   Sessions']       },
 "       \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
 "       \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
 "       \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
 "       \ { 'type': 'commands',  'header': ['   Commands']       },
 "       \ ]
"autocmd VimEnter *
"            \   if !argc()
"            \ |   Startify
"            \ |   NERDTree
"            \ |   wincmd w
"            \ | endif

" NERDTree config
"
nmap <Leader>nt :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeChDirMode = 2  " Change cwd to parent node

let g:NERDTreeMinimalUI = 1  " Hide help text
let g:NERDTreeAutoDeleteBuffer = 1

" Alternanr entre archivos confi
nmap <leader>a <Plug>(altr-forward)
nmap <leader>A <Plug>(altr-back)

" Jedi config
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"
let g:jedi#completions_enabled = 0

" Enmmet config
let g:user_emmet_leader_key=','

" Config javascript color
let g:vim_jsx_pretty_colorful_config = 1

" Identacion
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled='1'

" pyflake config
"let g:pyflakes_autostart = 0
"map <F10> :PyflakesToggle<cr>
let g:pymode_lint_ignore=["E501", "W601"]
" Customize quickfixwindow
let g:flake8_show_quickfix=0  " don't show
