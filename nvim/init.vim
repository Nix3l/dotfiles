call plug#begin(stdpath('data') . 'init.vim')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
Plug 'wittyjudge/gruvbox-material.nvim'
" Plug 'andweeb/presence.nvim'

call plug#end()

if has('termguicolors')
    set termguicolors
endif

set background=dark

"let g:everforest_background = 'hard'
"let g:airline_theme = 'everforest'
"let g:everforest_enable_italic = 1

let g:gruvbox_better_performance = 1
let g:airline_theme = 'gruvbox_material'
"let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_italic_comment = 1

colorscheme gruvbox-material

" use the coc config
source $HOME/.config/nvim/plug-config/coc.vim

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

set mouse=a

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set relativenumber
set number

set iskeyword-=_

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

set showtabline=2

set noshowmode
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set clipboard=unnamedplus

" clear search on ESC
map <esc> :noh <CR>

" highlighting for todos and notes
autocmd BufNewFile,BufRead * match ErrorMsg "TODO"
autocmd BufNewFile,BufRead * 2match ErrorMsg "FIXME"
autocmd BufNewFile,BufRead * 3match WarningMsg "NOTE"

" recognise .h files as c instead of cpp
autocmd BufNewFile,BufRead *.h setlocal filetype=c
autocmd BufNewFile,BufRead *.comp setlocal filetype=glsl

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "java", "json", "rust", "lua"},
    auto_install = true;
    highlight = {
        enable = true, -- false will disable the whole extension
    },
}
EOF
