call plug#begin(stdpath('data') . 'init.vim')

Plug 'sainnhe/gruvbox-material'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', { 'branch': 'v0.8.0' }
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme gruvbox-material

" use the coc config
source $HOME/.config/nvim/plug-config/coc.vim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set mouse=a

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set relativenumber
set number

syntax enable

set nowrap

set encoding=utf-8
set pumheight=10
set fileencoding=utf-8

set ruler

set cmdheight=2
set splitbelow
set splitright

set t_Co=256

set conceallevel=0
set laststatus=0

set cursorline

set background=dark

set showtabline=2

set noshowmode
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set clipboard=unnamedplus

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "java", "json", "rust", "lua"},
    auto_install = true;
    highlight = {
        enable = true, -- false will disable the whole extension
    },
}
EOF
