set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'elzr/vim-json'
Plugin 'gabrielelana/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'LnL7/vim-nix'
Plugin 'pangloss/vim-javascript'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'laurilehmijoki/haskellmode-vim'
Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
set relativenumber
set ruler

set list
set listchars=nbsp:⌦,tab:→\ ,trail:·,precedes:⇐,extends:⇒

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set backspace=2

" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

map <silent><space> :let @/=""<CR>
set hlsearch
set incsearch

set showcmd

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 20000
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

:set noswapfile

:set colorcolumn=120

" Gneral conceal settings
set conceallevel=1

" vim-javascript plugin settings
let g:javascript_conceal_function = "λ"
let g:javascript_conceal_arrow_function = "λ"
