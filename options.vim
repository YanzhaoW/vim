vim9script

set number
set relativenumber
set expandtab
set incsearch
set hidden
set splitright
set cursorline
set ignorecase
set termguicolors
set hlsearch

set tabstop=4
set shiftwidth=4
set backspace=indent,start,eol
set scrolloff=4
set cmdheight=1
set mouse=a
set conceallevel=0
set pumheight=15
set numberwidth=2
set directory=/tmp//

g:netrw_dirhistmax = 0

# set signcolumn=yes
# set clipboard=unnamedplus
# set noshowmode
# set spelloptions=noplainbuffer
# set inccommand=nosplit


g:gruvbox_transparent_bg = 1
g:gruvbox_contrast_dark = "hard"
#g:gruvbox_sign_column = "bg"

colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE
