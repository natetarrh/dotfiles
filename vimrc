" fzf vim-fugitive vim-gitgutter vim-surround vim-vinegar
let base16colorspace=256
colorscheme base16-mocha
syntax on
set re=0
filetype plugin indent on

inoremap jk <Esc>
nnoremap <C-f> :Files<CR>
nnoremap <C-p> :Buffers<CR>
nnoremap <Space> :

set clipboard=unnamed
set hidden
set hlsearch
set mouse=a
set number
set showcmd
set whichwrap+=<,>,h,l,[,]

set ignorecase
set smartcase

set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

set wildmode=longest:full,full
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg

set laststatus=2
set statusline=\ %f
set statusline+=\ %m%r%h%w
"set statusline+=\ %{FugitiveStatusline()}
set statusline+=\ [%l,%c%V][%P]

set shiftwidth=2
set softtabstop=2
set tabstop=2
set textwidth=80
set autoindent
set smartindent
set expandtab
set smarttab

set splitright

" set rtp+=/opt/homebrew/opt/fzf

" autocmd BufWritePost * GitGutter
autocmd Filetype gitcommit setlocal textwidth=72
