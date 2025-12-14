vim9script

var data_dir = '~/.config/vim'
if empty(glob(data_dir .. '/autoload/plug.vim'))
  silent execute '!curl -fLo ' .. data_dir .. '/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

# Run PlugInstall if there are missing plugins
autocmd VimEnter * 
    | if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) != 0
    | PlugInstall --sync | source $MYVIMRC
    | endif

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'markonm/traces.vim'
Plug 'ojroques/vim-oscyank', {'branch': 'main'}


call plug#end()
