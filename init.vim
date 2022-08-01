set encoding=UTF-8
set exrc
set number
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set guicursor=

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/tpope/vim-surround'                  " Surrounding
Plug 'https://github.com/preservim/nerdtree'                  " NerdTree
Plug 'https://github.com/tpope/vim-commentary'                " For Commenting with gcc & gc
Plug 'https://github.com/vim-airline/vim-airline'             " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes'      " Status bar themes
Plug 'https://github.com/ap/vim-css-color'                    " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes'       " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'                   " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons'              " Developer Icons
Plug 'https://github.com/preservim/tagbar'                    " Tagbar for code navigation
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim' " Indentation level guide
Plug 'https://github.com/sainnhe/everforest'                  " Everforest colorscheme
Plug 'https://github.com/sonph/onehalf'                       " Onehalf colorscheme
Plug 'https://github.com/sainnhe/sonokai'                     " Sonokai colorscheme
Plug 'https://github.com/sainnhe/gruvbox-material'            " Gruvbox colorscheme
Plug 'https://github.com/jacoborus/tender.vim'                " Tender colorscheme
Plug 'https://github.com/cocopon/iceberg.vim'                 " Iceberg colorscheme
Plug 'https://github.com/folke/tokyonight.nvim'               " Tokyonight colorscheme
Plug 'https://github.com/rmehri01/onenord.nvim'               " Onenord colorscheme
Plug 'https://github.com/kyazdani42/nvim-web-devicons'        " Dependency for barbar
Plug 'https://github.com/romgrk/barbar.nvim'                  " Tab manager at the top

call plug#end()

colorscheme onenord

autocmd VimEnter * AirlineTheme bubblegum
autocmd VimLeave * set guicursor=

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F8>  :TagbarToggle<CR>
nnoremap <C-[> :BufferPrevious<CR>
nnoremap <C-]> :BufferNext<CR>
nnoremap <F4>  :BufferClose<CR>
nnoremap <F12> :BufferClose!<CR>

lua << EOF
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_trailing_blankline_indent = false,
}

require("onenord").setup {
    styles = {
        keywords = "italic",
    }
}
EOF
