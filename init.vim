set nocompatible            
set showmatch             
set ignorecase              
set mouse=v                 
set mouse=a               
set hlsearch                
set incsearch              
set tabstop=4               
set softtabstop=4          
set expandtab               
set shiftwidth=4            
set autoindent              
set number                  
set relativenumber
set wildmode=longest,list  
set clipboard=unnamedplus   
filetype plugin on
set cursorline              
set ttyfast                 
filetype plugin indent on   
syntax on  
 


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' 
Plug 'https://github.com/preservim/nerdtree' 
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'https://github.com/vim-airline/vim-airline' 
Plug 'https://github.com/ap/vim-css-color' 
Plug 'https://github.com/neoclide/coc.nvim'  
Plug 'https://github.com/ryanoasis/vim-devicons' 
Plug 'https://github.com/tc50cal/vim-terminal' 
Plug 'https://github.com/preservim/tagbar' 
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'https://github.com/folke/tokyonight.nvim'
Plug 'https://github.com/nvimdev/dashboard-nvim' 
Plug 'https://github.com/nvim-tree/nvim-web-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim' 

set encoding=UTF-8

call plug#end()



colorscheme tokyonight-night



let mapleader = " "
nmap <leader>e :NERDTreeToggle<CR>



nmap <F8> :TagbarToggle<CR>



lua << EOF
require'dashboard'.setup{}
EOF
