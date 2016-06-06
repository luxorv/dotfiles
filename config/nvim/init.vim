" ======================== Vimrc File. =============================.

" Section Plugins {{{
call plug#begin('~/.config/nvim/plugged')

" Colorschemes.
Plug 'chriskempson/base16-vim'

" Utilities.
Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder, mapped to <leader>t
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' " file drawer
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'benmills/vimux' " tmux integration for vim
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'ryanoasis/vim-webdevicons'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'

" Language Specific
Plug 'elzr/vim-json', { 'for': 'json' } " JSON support
" Python Specifics
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'klen/python-mode', {'for': 'python'}
Plug 'tmhedberg/SimpylFold', {'for': 'python'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-jedi', {'for': 'python'} " Python autocompletion
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support
Plug 'tpope/vim-endwise' " automatically add end in ruby
Plug 'tpope/vim-ragtag' " endings for html, xml, etc. - ehances surround

call plug#end()

" }}}

" Section General {{{

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','
filetype plugin indent on
autocmd filetype python set expandtab
set textwidth=120

" Tab control
set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

let g:deoplete#enable_at_startup = 1

if has('mouse')
    set mouse=a
    " set ttymouse=xterm2
endif

set clipboard=unnamed

set nobackup
set noswapfile
let g:python_host_prog = '/usr/local/opt/pyenv/versions/2.7.11/bin/python'
let g:python3_host_prog = '/usr/local/opt/pyenv/versions/3.4.4/bin/python'
" faster redrawing
set ttyfast

" }}}

" Section User Interface {{{

" code folding settings
" Enable folding
set foldmethod=indent
set foldlevel=99
set foldnestmax=10 " deepest fold is 10 levels
nnoremap <space> za

set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set scrolloff=3 " lines of text around cursor
set shell=$SHELL
set cmdheight=1 " command bar height

set title " set terminal title

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" switch syntax highlighting on
syntax on

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
execute "set background=".$BACKGROUND
execute "colorscheme ".$THEME
highlight Comment cterm=italic

set number " show line numbers
" set relativenumber " show relative line numbers

set nowrap "turn on line wrapping
set showbreak=… " show ellipsis at breaking

set autoindent " automatically set indent of new line
set smartindent

" }}}

" Section Mappings {{{

" remap esc
inoremap jk <esc>

" markdown to html
nmap <leader>md :%!markdown --html4tags <cr>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>

" wipout buffer
nmap <silent> <leader>b :bw<cr>

" shortcut to save
nmap <leader>, :w<cr>

" disable Ex mode
noremap Q <NOP>

" set paste toggle
set pastetoggle=<F6>

" toggle paste mode
map <leader>v :set paste!<cr>

" edit ~/.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
" reload ~/.config/nvim/init.vim
map <leader>sv :so ~/.config/nvim/init.vim<cr>
" edit gitconfig
map <leader>eg :e! ~/.gitconfig<cr>

" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" activate spell-checking alternatives
nmap ;s :set invspell spelllang=en<cr>

" toggle invisible characters
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪
nmap <leader>l :set list!<cr>

" Textmate style indentation
vmap <leader>[ <gv
vmap <leader>] >gv
nmap <leader>[ <<
nmap <leader>] >>
nnoremap ; :
" switch between current and last buffer
nmap <leader>. <c-^>

" enable . command in visual mode
vnoremap . :normal .<cr>
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <leader>wc :wincmd q<cr>

" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" inoremap <tab> <c-r>=Smart_TabComplete()<CR>

map <leader>r :call RunCustomCommand()<cr>
" map <leader>s :call SetCustomCommand()<cr>
let g:silent_custom_command = 0

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

nmap <leader>w :setf textile<cr> :Goyo<cr>

" }}}

" Section Functions {{{

" recursively search up from dirname, sourcing all .vimrc.local files along the way
function! ApplyLocalSettings(dirname)
    " convert windows paths to unix style
    let l:curDir = substitute(a:dirname, '\\', '/', 'g')

    " walk to the top of the dir tree
    let l:parentDir = strpart(l:curDir, 0, strridx(l:curDir, '/'))
    if isdirectory(l:parentDir)
        call ApplyLocalSettings(l:parentDir)
    endif

    " now walk back down the path and source .vimsettings as you find them.
    " child directories can inherit from their parents
    let l:settingsFile = a:dirname . '/.vimrc.local'
    if filereadable(l:settingsFile)
        exec ':source' . l:settingsFile
    endif
endfunction

" }}}

" Section Plugins {{{


set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Nerd\ Font\ Types:h11
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'
" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

filetype plugin indent on

" testing rounded separators (extra-powerline-symbols):
" airline options
set laststatus=2
set guifont=Inconsolata\ for\ Powerline\ Nerd\ Font\ Complete\ Windows\ Compatible:h11
let g:airline_powerline_fonts=1
let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0B2"
let g:airline_theme='base16'

let g:tmuxline_theme = 'molokai'
set t_Co=256
set encoding=utf-8

" set the CN (column number) symbol:
"let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0


let g:SuperTabCrMapping = 0

if (has("gui_running"))
    set guioptions=egmrt
    set background=light
    colorscheme solarized
	let g:airline_left_sep='\uE0BC'
	let g:airline_right_sep='\uE0BE'
    let g:airline_powerline_fonts=0
    let g:airline_theme='solarized'
endif

let g:AutoPairsFlyMode = 1

let g:pymode = 1
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'

call ApplyLocalSettings(expand('.'))

" }}}
" ======================== End of Vimrc File. ======================.
