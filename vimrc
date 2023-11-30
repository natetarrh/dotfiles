let base16colorspace=256
colorscheme base16-monokai
syntax on
filetype plugin indent on

autocmd BufReadPost *.yaml.template set syntax=yaml
autocmd BufWritePost * GitGutter
autocmd! FileType fzf set laststatus=0
  \| autocmd BufLeave <buffer> set laststatus=2
autocmd Filetype gitcommit setlocal textwidth=72

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
set rtp+=/opt/homebrew/opt/fzf
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set smarttab
set softtabstop=2
set splitright
set statusline=\ %f
set statusline+=\ %m%r%h%w
set statusline+=\ %{FugitiveStatusline()}
set statusline+=\ [%l,%c%V][%P]
set tabstop=2
set termguicolors
set textwidth=80
set whichwrap+=<,>,h,l,[,]
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg
set wildmode=longest:full,full

let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = []
