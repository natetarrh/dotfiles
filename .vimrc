set nocompatible "Set this first or risk undoing other settings
set number "Line numbers 
set cursorline "Highlight current row
set showcmd "Incomplete commands
set hidden "Buffer management
set list                        " Show whitespace
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " and use these fancy characters
set nowrap

let mapleader = ","

set mouse=a "Allow mouse navigation in terminal

"Bundle management with Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
Bundle 'airblade/vim-gitgutter'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'mhinz/vim-startify'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on

nmap <leader>w :w!<CR>

set nosmd "Don't show mode in status line
set laststatus=2 "Always display status line
set wildmenu "Show auto-complete options
set wildmode=longest:full,full "Tab-complete for wildmenu

set autochdir "cd into directory with file

set scrolloff=5 "Lines above/below cursor
set cmdheight=1 "shortens cmd height

set backspace=eol,start,indent "Backspace configuration
set whichwrap+=<,>,[,],h,l "End-of-line navigation

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight searches
set incsearch "more like browser search

set nolazyredraw "Don't redraw during macros

set magic "For regular expressions

set showmatch "Matching braces highlighting
set mat=2 "Blink for above

"No sound on errors
set noerrorbells
set visualbell

"Timeout
set timeoutlen=500

"Pretty colors
set t_Co=256
colorscheme solarized
set bg=dark
syntax enable

"GUI options
if has('gui_running')
    colorscheme github-gvim
    set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
    set guioptions-=r "remove right-hand scrollbar
    set guioptions-=L "remove left-hand scrollbar
endif

set encoding=utf8
try
  lang en_US
catch
endtry

"Default file types
set ffs=unix,dos,mac 

"Text tab indent etc.
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set autoindent
set smartindent

set lbr "Line break
set tw=500 "Text wrap

"Highlight disabling shortcut
ca nh nohl

"In Normal mode, semicolon brings up colon prompt
cnoremap ; :
nnoremap ; :
nnoremap : ;

":nonum turns off line numbers, :num restores them
ca nonum set nonumber
ca num set number

" Remap jj to escape insert mode 
inoremap jj <Esc>

"Disable 'Entering Ex mode. Type 'visual' to go to Normal mode.'
map Q <Nop>

"Disable K looking things up
map K <Nop>

"Disable F1 help. Better yet, I meant Esc anyway.
imap <F1> <Esc>

"Quick insertion of a newline by pressing enter
nnoremap <silent> <CR> O<Esc>

"Remap space to insert a single character
noremap <Space> i_<Esc>r

"Y yanks to the end of the line, rather than the whole line (use yy)
noremap Y y$

"End of this line more important than end of previous line
noremap - _
noremap _ -

"Leave Makefiles alone
au BufRead,BufNewFile Makefile set ts=4 sw=4 noexpandtab

":make runs the Makefile, if present, else ./compile 
"http://stackoverflow.com/questions/729249
set shell=/bin/bash
set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\ \\\|\\\|\ ./compile
" = saves all and compiles (runs make)
nnoremap = :wa<bar>:make<bar><CR>
"Having overwritten =, assign it to Tab to align text
noremap <Tab> =

"Highlight impcore files like scheme
au BufNewFile,BufRead *.imp set filetype=scheme
au BufNewFile,BufRead *.ic set filetype=scheme

"Smaller tabs for text and note files
au BufEnter *.txt setlocal ft=txt
au FileType text,txt,notes,ruby setl sw=2 sts=2 et

"Text autowrap to 80 columns
set textwidth=80
set wrap

"Yank text to the OS X clipboard
nnoremap <leader>y "*y
nnoremap <leader>yy "*Y

"Bundle-toggling commands
nnoremap <leader>g :GitGutterToggle<CR>
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

"Reload .vimrc
nnoremap <silent> <leader>v :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

"Options for YouCompleteMe 
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'txt' : 1,
      \ 'tex' : 1,
      \}

"Start NERDTree and switch cursor to main window
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"Load powerline
source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim

