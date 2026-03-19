syntax on
filetype plugin indent on
let base16colorspace=256
colorscheme base16-mocha

autocmd BufReadPost *.yaml.template set syntax=yaml
autocmd BufWritePost * GitGutter
autocmd! FileType fzf set laststatus=0
  \| autocmd BufLeave <buffer> set laststatus=2
autocmd Filetype gitcommit setlocal textwidth=72

inoremap jk <Esc>
nnoremap <C-f> :Files<CR>
nnoremap <C-p> :Buffers<CR>
nnoremap <Space> :

" Indentation & Tabs
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set textwidth=80

" Search
set hlsearch
set ignorecase
set regexpengine=0
set smartcase

" UI & Display
set number
set showcmd
set laststatus=2
set statusline=\ %f
set statusline+=\ %m%r%h%w
set statusline+=\ %{FugitiveStatusline()}
set statusline+=\ [%l,%c%V][%P]
set termguicolors
set list
set listchars=tab:▸\ ,trail:·,nbsp:_
set splitright

" Editing Behavior
set clipboard=unnamed
set hidden
set mouse=a
set whichwrap+=<,>,h,l,[,]

" Completion & Files
set runtimepath+=/opt/homebrew/opt/fzf
set wildmode=longest:full,full
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg

let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = []
