" change the leader to be a comma vs slash
let mapleader=","

" syntax highlighting
syntax on

" display line numbers
set number

" using only 1 column (and 1 space) while possible
set numberwidth=1

" we are using dark background in vim
set background=dark

" ignore these files when completing
set wildignore+=.git,*.pyc

" show a line at column 79
if exists("&colorcolumn")
    set colorcolumn=79
endif

" have a line indicate the cursor location
set cursorline

" show the cursor position all the time
set ruler

" use spaces, not tabs, for autoindent/tab key.
set expandtab

" don't wrap text
set nowrap

" don't wrap text in the middle of a word
set linebreak

" always set auto-indenting on
set autoindent

" use smart indent if there is no indent file
set smartindent

" <tab> inserts 4 spaces
set tabstop=4

" but an indent level is 4 spaces wide.
set shiftwidth=4

" <BS> over an autoindent deletes both spaces.
set softtabstop=4

" rounds indent to a multiple of shiftwidth
set shiftround

" show matching <> (html mainly) as well
set matchpairs+=<:>

" disable folding
set nofoldenable

" don't bell or blink
set noerrorbells
set vb t_vb=

" keep our cursor in the middle of the screen
set scrolloff=100
set sidescrolloff=30

" show whitespace
set list
set listchars=tab:>-,trail:~

" default to using case insensitive searches ...
set ignorecase

" ... unless uppercase letters are used in the regex.
set smartcase

" handle tabs more intelligently while searching
set smarttab

" highlight searches by default.
set hlsearch

" incrementally search while typing a /regex
set incsearch

set autoread
set backspace=indent,eol,start
set history=200
set noswapfile

set cino=(0
set showmatch
set hidden
set nowrap
set noshowmode
set laststatus=2

" remove trailing whitespace on <leader>S
noremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" load Vundle for plugin management
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" plugins
" after adding a new plugin, run "vim +PluginInstall +qall" to install it
Plugin 'mileszs/ack.vim'
Plugin 'godlygeek/tabular' " must appear before plasticboy/vim-markdown
Plugin 'plasticboy/vim-markdown'

Plugin 'altercation/vim-colors-solarized'
Plugin 'JarrodCTaylor/vim-256-color-schemes'

Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'

Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mustache/vim-mustache-handlebars'

" end loading plugins
call vundle#end()
filetype plugin indent on

" Options
filetype plugin on
filetype indent on
set t_Co=256

syntax enable
" colorscheme honeybadger
let g:solarized_termcolors = &t_Co
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set background=dark
highlight clear SignColumn

" Filetypes management
" --------------------
au BufNewFile,BufRead *.json set ft=javascript

" Plugins customizations
" ----------------------
let g:airline_powerline_fonts= 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"

let g:mustache_abbreviations = 1

let g:syntastic_check_on_open=1                         " check for errors when file is loaded
let g:syntastic_loc_list_height=5                       " the height of the error list defaults to 10
let g:syntastic_python_checkers=['flake8']              " sets flake8 as the default for checking python files
let g:syntastic_javascript_checkers=['jshint']          " sets jshint as our javascript linter
let g:syntastic_filetype_map={ 'handlebars.html': 'handlebars' }
let g:syntastic_mode_map={ 'mode': 'active',
                         \ 'active_filetypes': [],
                         \ 'passive_filetypes': ['html', 'handlebars'] }


" set color theme
silent! colorscheme solarized

" set shortcut key and open NerdTree at start
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '\.db$']

" cut, copy & paste
nmap <C-V> "+gP
imap <C-V> <ESC>"+gpi
vmap <C-V> c<ESC>"+gph
vmap <C-C> "+y

" enable spell checking
set spell spelllang=en_us

" disable double spacing between sentences
set nojoinspaces

" integrate yanking & pasting with the OS X clipboard
set clipboard=unnamed


let g:jedi#use_tabs_not_buffers=0

let g:ctrlp_show_hidden=1
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](transpiled)|dist|tmp|node_modules|(\.(swp|git|bak|pyc|DS_Store))$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let g:ctrlp_open_multiple_files = '1vjr'
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }
func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <F6> :call <sid>DeleteBuffer()<cr>
endfunc
