" fzf vim-fugitive vim-gitgutter vim-surround vim-vinegar
let base16colorspace=256
let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = []

autocmd BufWritePost * GitGutter
autocmd Filetype gitcommit setlocal textwidth=72

colorscheme base16-mocha
filetype plugin indent on
syntax on

inoremap jk <Esc>
nnoremap <C-f> :Files<CR>
nnoremap <C-p> :Buffers<CR>
nnoremap <Space> :

set autoindent
set clipboard=unnamed
set expandtab
set hidden
set hlsearch
set ignorecase
set laststatus=2
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
set mouse=a
set number
set regexpengine=0
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set smarttab
set softtabstop=2
set splitright
set statusline=\ %f\ %m%r%h%w\ %{FugitiveStatusline()}\ [%l,%c%V][%P]
set tabstop=2
set textwidth=80
set whichwrap+=<,>,h,l,[,]
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg
set wildmode=longest:full,full

source /usr/share/doc/fzf/examples/fzf.vim
