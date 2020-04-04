"""""""""""""""
" dein
"""""""""""""""
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
    call dein#add('w0rp/ale')
    call dein#add('prettier/vim-prettier')
    call dein#add('alvan/vim-closetag')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

""""""""""""""""""""""""
" setting
""""""""""""""""""""""""
set title
set cursorline
set showmatch
highlight LineNr ctermfg=darkyellow
set number
set clipboard=unnamed
set backspace=indent,eol,start
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent

" vim-closetag
let g:closetag_filenames = '*.html,*.vue'
