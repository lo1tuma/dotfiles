set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'github.com/elzr/vim-json'
Plugin 'gabrielelana/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

Bundle 'jelera/vim-javascript-syntax'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://github.com/laurilehmijoki/haskellmode-vim.git'
Bundle 'git://github.com/scrooloose/syntastic.git'

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set guifont=Monaco:h11
set guifontwide=NSimsun:h12

set number

set list
set listchars=tab:→\ ,trail:·,precedes:⇐,extends:⇒

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

let g:syntastic_javascript_checkers=['jshint']

map <silent><space> :let @/=""<CR>
set hlsearch
set incsearch

set showcmd
