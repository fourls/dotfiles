" SETTINGS

syntax on " Syntax highlighting

set number " Show line numbers
set cursorline " Highlight line with cursor

set tabstop=4 " Set indentation
set expandtab " Use tabs
set shiftwidth=4 " Set indent amount with >>

set hlsearch " Show search matches
set incsearch " Show search matches while typing

set showcmd " Show in progress command while typing

set wildmenu " Enable autocompletion with tab
set wildmode=list:longest " Match typical bash autocompletion

let mapleader=" "

" System clipboard remappings
vnoremap <leader>y "+y
vnoremap <leader>d "+d
nnoremap <leader>P "+P
nnoremap <leader>p "+p