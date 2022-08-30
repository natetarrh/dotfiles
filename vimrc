let base16colorspace=256
colorscheme base16-mocha
syntax on
filetype plugin indent on

autocmd BufWritePost * GitGutter
autocmd! FileType fzf set laststatus=0 cmdheight=0
  \| autocmd BufLeave <buffer> set laststatus=2 cmdheight=1
autocmd Filetype gitcommit setlocal textwidth=72
function! YankToClipboard(event)
  if a:event.operator is 'y' && a:event.regname is ''
    execute 'OSCYankReg "'
  endif
endfunction
autocmd TextYankPost * call YankToClipboard(v:event)

inoremap jk <Esc>
nnoremap <C-f> :Files<CR>
nnoremap <C-p> :Buffers<CR>
nnoremap <Space> :

set autoindent
set clipboard=unnamedplus
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
set statusline=\ %f
set statusline=\ %m%r%h%w
set statusline+=\ %{FugitiveStatusline()}
set statusline+=\ [%l,%c%V][%P]
set tabstop=2
set termguicolors
set textwidth=80
set whichwrap+=<,>,h,l,[,]
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg
set wildmode=longest:full,full

" source /path/to/fzf/examples/fzf.vim
let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = []
