call plug#begin(stdpath('data') . 'init.vim')

Plug 'drewtempelmeyer/palenight.vim'
Plug 'sainnhe/everforest'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'morhetz/gruvbox', {'as': 'gruvbox'}

call plug#end()

" use the coc config
source $HOME/.config/nvim/plug-config/coc.vim

colorscheme gruvbox

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set number
syntax enable
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true, -- false will disable the whole extension
  },
}

-- catppuccin things
require("catppuccin").setup ({
    styles = {
    	comments = "italic",
    	functions = "italic",
    	keywords = "italic",
    	strings = "NONE",
    	variables = "italic",
    },
    integrations = {
	    treesitter = true,
	    native_lsp = {
		    enabled = true,
		    virtual_text = {
			    errors = "italic",
			    hints = "italic",
			    warnings = "italic",
			    information = "italic",
		    },
		underlines = {
			errors = "underline",
			hints = "underline",
			warnings = "underline",
			information = "underline",
		},
	},
	lsp_trouble = false,
	cmp = true,
	lsp_saga = false,
	telescope = true,
	nvimtree = {
		enabled = true,
		show_root = false,
		transparent_panel = false,
	},
	neotree = {
		enabled = false,
		show_root = false,
		transparent_panel = false,
	},
	which_key = false,
	indent_blankline = {
		enabled = true,
		colored_indent_levels = false,
	},
	dashboard = true,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = true,
	markdown = true,
	lightspeed = false,
	ts_rainbow = false,
	hop = false,
	notify = true,
	telekasten = true,
	symbols_outline = true,
    }   
})
EOF
