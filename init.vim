call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

" Plug 'vim-airline/vim-airline'
" 
" Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

Plug 'tyrannicaltoucan/vim-quantum'

Plug 'flazz/vim-colorschemes'

Plug 'mhinz/vim-startify'

Plug 'majutsushi/tagbar'

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
Plug 'ap/vim-buftabline'
Plug 'haya14busa/vim-keeppad'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
" Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'donRaphaco/neotex', { 'for': 'tex' }
" Plug 'mgee/lightline-bufferline'
" Initialize plugin system
call plug#end()


" set showtabline=2
" Global
"let g:tex_flavor = 'latex'
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
" set completeopt=menuone,longest

" imap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" imap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set hidden
set encoding=utf-8
set background=dark
" set noshowmode
set cmdheight=2
let g:quantum_black=1
colorscheme quantum
set mouse=a
set termguicolors
let g:mapleader=" "
set t_Co=256

let g:SuperTabDefaultCompletionType = "<c-n>"
" let g:jedi#auto_vim_configuration = 0
" let g:jedi#goto_assignments_command = ''  " dynamically done for ft=python.
" let g:jedi#goto_definitions_command = ''  " dynamically done for ft=python.
" let g:jedi#use_tabs_not_buffers = 1  " current default is 1.
" let g:jedi#rename_command = '<Leader>gR'
" let g:jedi#usages_command = '<Leader>gu'
" let g:jedi#completions_enabled = 0
" let g:jedi#smart_auto_mappings = 1
" let g:jedi#popup_select_first = 1
" let g:jedi#show_call_signatures = 0
" Unite/ref and pydoc are more useful.
" let g:jedi#documentation_command = '<Leader>_K'
" let g:jedi#auto_close_doc = 1
" let g:jedi#show_dockstring = 0
map <Leader> <Plug>(easymotion-prefix)
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
" set completeopt-=prev
" inoremap <C-space> <C-x><C-o>
map <F5> :w :!python3 %<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"    \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"  
"  inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"inoremap <silent><expr> ( complete_parameter#pre_complete("()")
" smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
" imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
let g:AutoPairs = {'[':']', '{':'}',"'":"'",'"':'"', '`':'`', '(':')'}
inoremap <buffer><silent> ) <C-R>=AutoPairsInsert(')')<CR>
" Python settings
let python_highlight_all = 1
"  " Docs
"  let g:pymode_doc = 0
"  let g:pymode_doc_key = 'K'
"  
"  " Linting
"  let g:pymode_lint = 1
"  let g:pymode_lint_write = 1
"  
" TagBar 
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
" let g:airline#extensions#tabline#enabled = 1
let w:airline_disabled=1
" let g:startify_custom_header = [
" \'     ____  ___  ____ _   __(_)___ ___',
" \'    / __ \/ _ \/ __ \ | / / / __ `__ \',
" \'   / / / /  __/ /_/ / |/ / / / / / / /',
" \'  /_/ /_/\___/\____/|___/_/_/ /_/ /_/',
" \]

let g:startify_list_order = [
            \ 'files',
            \ 'sessions',
            \ 'bookmarks',
            \ ]
let g:startify_files_number = 6
let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.vim'}, {'z':'~/.zshrc'} , {'t': '~/.tmux.conf'}]
let g:startify_enable_special = 0
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')  
 set statusline=%<%t\%=%p%%\ %t\ %l\/%L\ %M\ %R
"set statusline=%<%F\ %h%=%p%%\ %l\/%L\ %R\ %M
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
language en_US.UTF-8
set ttyfast
set laststatus=2
let $TERM='screen-256color'
au VimLeave * set guicursor=a:hor1-blinkon0
let g:buftabline_show=1
let g:buftabline_numbers=0
let g:buftabline_indicators=1
let g:buftabline_separators=1
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'

set updatetime=100

" let g:incsearch#magic='\v'
" let g:incsearch#smart_backward_word=1
" let g:incsearch#consistent_n_direction=1
" let g:incsearch#auto_nohlsearch=0
" let g:incsearch#no_inc_hlsearch=1
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

let g:vimtex_view_method='zathura'
