" .vimrc

set encoding=utf-8

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set autoindent
set ts=2                          " set indent to 2 spaces
set shiftwidth=2
set expandtab
set nocompatible                  " don't need to be compatible with old vim
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set list listchars=tab:»·,trail:· " show extra space characters
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full

if exists('+relativenumber')
  set relativenumber                " show relative line numbers
else
  set number
end

set smarttab
set wrap

set shell=/bin/zsh

set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

" nerdtree settings
" autocmd vimenter * NERDTree " open nerdtree automatically
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if nerdtree is open only

" enable solarized
set background=dark
colorscheme solarized


let os=substitute(system('uname'), '\n', '', '')

" Cyrillic
if os == 'Darwin' || os == 'Mac'
  set keymap=russian-jcukenmac
elseif os == 'Linux'
  set keymap=russian-jcukenwin
endif

set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" yo ё
set spelllang=ru_yo,en_us

" Multiple cursors plugin mapping
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-c>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
