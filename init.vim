call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

Plug 'tyrannicaltoucan/vim-quantum'

" Plug 'flazz/vim-colorschemes'

Plug 'mhinz/vim-startify'

Plug 'shime/vim-livedown'

" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plug 'Yggdroot/indentLine'

Plug 'kien/ctrlp.vim'

Plug 'easymotion/vim-easymotion'

Plug 'iamcco/markdown-preview.vim'

Plug 'tpope/vim-surround'

Plug 'Shougo/neco-vim'
" the framework
" Plug 'roxma/nvim-completion-manager'
" Plug 'kristijanhusak/vim-hybrid-material'

" Plug 'davidhalter/jedi-vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
" Plug 'davidhalter/jedi'
Plug 'Shougo/echodoc.vim'
" Plug 'Shougo/neocomplete'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'

Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Plug 'vim-scripts/AutoComplPop'

" Plug 'itchyny/lightline.vim'
" Plug 'tenfyzhong/CompleteParameter.vim'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ap/vim-css-color'
Plug 'gregsexton/MatchTag'
Plug 'jszakmeister/vim-togglecursor'
Plug 'henrik/vim-indexed-search'
" Plug 'mkitt/tabline.vim'
" Plug 'bling/vim-bufferline'


" Plug 'ap/vim-buftabline'
Plug 'haya14busa/vim-keeppad'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
" Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'donRaphaco/neotex', { 'for': 'tex' }
" Plug 'mgee/lightline-bufferline'
Plug 'vim-python/python-syntax'
" Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
" Plug 'KeitaNakamura/neodark.vim'
" Initialize plugin system
call plug#end()


" Global
let g:livepreview_previewer = 'open -a Preview'
let g:ackprg = 'ag --vimgrep'
let g:jedi#force_py_version=3
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#popup_select_first = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#sources#jedi#show_call_signatures = 0
let g:echodoc#enable_at_startup = 1
let g:deoplete#sources#jedi#enable_cache = 1
set completeopt+=noinsert
set completeopt-=preview

set noshowmode
set noruler
set cmdheight=2
set hidden
set encoding=utf-8
set noshowcmd
" let g:onedark_termcolors=16
let g:onedark_terminal_italics=1
let g:webdevicons_enable_airline_tabline = 0
let g:webdevicons_enable_airline_statusline = 0
"onedark.vim override: Set a custom background color in the terminal
" if (has("autocmd") && !has("gui_running"))
"   augroup colors
"     autocmd!
"     let s:background = { "gui": "#222222", "cterm": "235", "cterm16": "0" }
"     autocmd ColorScheme * call onedark#set_highlight("Normal", { "bg": s:background }) "No `fg` setting
"   augroup END
" endif

colorscheme onedark
" set background=dark
" let g:quantum_black=1
" colorscheme quantum

" Airline settings
let g:airline_powerline_fonts = 1
" let g:airline_section_a = ''
let g:airline_section_b = ''
let g:airline_section_c = airline#section#create(['path'])
" au User AirlineAfterInit let g:airline_section_x = airline#section#create_right(['tagbar'])
au VimEnter * let g:airline_section_x = airline#section#create_right(['tagbar']) | :AirlineRefresh
" let g:airline_section_y = ''
" let g:airline_section_x = airline#section#create(['tagbar'])
call airline#parts#define_raw('pp', '%3p%%')
call airline#parts#define_accent('pp', 'bold')

call airline#parts#define_raw('ll', '%l/%L')
call airline#parts#define_accent('ll', 'bold')

call airline#parts#define_raw('cc', '%c')
call airline#parts#define_accent('cc', 'bold')
let g:airline_section_z = airline#section#create(['pp', ' │ ', 'll' , ' │ ', 'cc'])
" let g:airline_section_c = ''
let g:airline_section_warning = ''
" let g:airline#extensions#disable_rtp_load = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
" let g:airline#parts#ffenc#skip_expected_string='[unix]'
" let g:airline#extensions#tagbar#enabled = 1
" let g:airline#extensions#csv#enabled = 0
" let g:airline#extensions#wordcount#enabled = 1
" let g:airline_section_gutter = ''
set termguicolors
set t_Co=256

set mouse=a
let g:mapleader=" "

let g:SuperTabDefaultCompletionType = "<c-n>"
map <Leader> <Plug>(easymotion-prefix)
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
map <F5> :w :!python3 %<CR>
map <F6> :source $MYVIMRC<bar>:AirlineRefresh<CR>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
" autocmd VimEnter * execute "normal \<F6>"

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:AutoPairs = {'[':']', '{':'}',"'":"'",'"':'"', '`':'`', '(':')'}
inoremap <buffer><silent> ) <C-R>=AutoPairsInsert(')')<CR>
" Python settings
" let g:python_highlight_all = 1

let g:python_highlight_class_vars=1
let g:python_highlight_operators=0
" let g:python_highlights_builtins=0
" let g:python_highlight_class_vars=1
" let g:python_highlight_builtin_funcs_kwarg=1
" let g:python_highlight_exceptions=1
let g:python_highlight_string_formatting=1
let g:python_highlight_string_format=1
let g:python_highlight_string_templates=1
" let g:python_highlight_indent_errors=1
" let g:python_highlight_space_errors=1

let g:tagbar_compact = 1
let g:tagbar_autofocus = 1 " автофокус на Tagbar при открытии
map <F4> :TagbarToggle<CR>

" NerdTree settings
let NERDTreeMinimalUI = 1
map <F3> :NERDTreeToggle<CR>
map <F2> :Startify<CR>
" let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
" let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1
" let g:NERDTreeFileExtensionHighlightFullName = 1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
" Buffers
map <C-q> :bd<CR>      " CTRL+Q - close current buffer
set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files
set encoding=utf-8
set incsearch	  
set hlsearch
set smarttab
set tabstop=4
set clipboard=unnamedplus
nnoremap <C-[> :bprevious<CR>
nnoremap <C-]> :bnext<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" <Ctrl-l> redraws the screen and removes any search highlighting.
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_left_alt_sep '\'
" let g:airline_right_alt_sep '/'
" let g:airline_alt_left_sep='|'
" let g:airline_alt_right_sep='|'
" " let g:airline_tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 0
" let g:airline#extensions#tabline#enabled = 1
" let w:airline_disabled=1
" 
" 
" 
" 
" 
" 
let g:startify_custom_header = [
\'     ____  ___  ____ _   __(_)___ ___',
\'    / __ \/ _ \/ __ \ | / / / __ `__ \',
\'   / / / /  __/ /_/ / |/ / / / / / / /',
\'  /_/ /_/\___/\____/|___/_/_/ /_/ /_/',
\]

let g:startify_list_order = [
            \ 'files',
            \ 'sessions',
            \ 'bookmarks',
            \ ]
let g:startify_files_number = 6
let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.vim'}, {'z':'~/.zshrc'} , {'t': '~/.tmux.conf'}]
let g:startify_enable_special = 0
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')  
" set statusline=%<%t\%=%p%%\ %t\ %l\/%L\ %M\ %R
"set statusline=%<%F\ %h%=%p%%\ %l\/%L\ %R\ %M
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
language en_US.UTF-8
set ttyfast
set laststatus=0
" let $TERM='screen-256color'
au VimLeave * set guicursor=a:hor1-blinkon0
" let g:buftabline_show=1
" let g:buftabline_numbers=0
" let g:buftabline_indicators=1
" let g:buftabline_separators=1
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

autocmd FileType kv  let b:deoplete_disable_auto_complete = 1
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'

set updatetime=100

let g:incsearch#highlight={
            \       'match' : {
            \           'priority' : '10'
            \       },
            \       'on_cursor' : {
            \           'priority' : '100'
            \       },
            \       'cursor' : {
            \           'group' : 'ErrorMsg',
            \           'priority' : '1000'
            \       }
            \ }


