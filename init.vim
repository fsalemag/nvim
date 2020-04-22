call plug#begin()
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-python/python-syntax'
Plug 'tomasiser/vim-code-dark'
Plug 'jpalardy/vim-slime'
call plug#end()

" Basic configs
set number
set wildmode=longest,list	"Get bash like tab completions
syntax on				"Syntax highlighting
set ignorecase			"Ignore case in searches
set showmatch 			"Show matching brackets
set hlsearch			"Highlights search results
set tabstop=4			"Tab has 4 spaces size
let mapleader = ' '
colorscheme codedark
hi search ctermbg=242

" Plugin basics
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
let g:python_highlight_all = 1
let g:airline_theme = 'codedark'
nmap <C-n> :NERDTreeToggle<CR>

" Shortcut to run current python and to run curent python if in package
nmap <leader>r :w<CR>:!python3 % 
nmap <leader>p :w<CR>:!python3 -m $(basename $PWD).%:r 

" Adds keys for deople completion
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Shortcut to open ipython in vertical split
let g:slime_target = "neovim"
nnoremap <C-c>n <C-w>v<C-w>l:terminal<CR>iipython<CR><C-\><C-n>:echo b:terminal_job_id<CR><C-w>h<C-w>45>

" Miscelaneous
nmap <leader>q :NERDTreeToggle<CR>
nmap <silent> <leader><leader> :noh<CR>



