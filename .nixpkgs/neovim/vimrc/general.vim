scriptencoding utf-8

set nocompatible
filetype off

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
set listchars=nbsp:␠,tab:→\ ,trail:·,precedes:⇐,extends:⇒

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set backspace=2

set statusline+=%#warningmsg#
set statusline+=%*

let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

let g:deoplete#enable_at_startup = 1
set completeopt-=preview

set cmdheight=2
let g:echodoc_enable_at_startup = 1

map <silent><space> :let @/=""<CR>
set hlsearch
set incsearch

set showcmd

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 20000
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist\|build\/\|test_output\/'
let g:ctrlp_show_hidden = 1

:set noswapfile

:set colorcolumn=120

" Gneral conceal settings
set conceallevel=1

" vim-javascript plugin settings
let g:javascript_conceal_function = "λ"
let g:javascript_conceal_arrow_function = "λ"

let g:vim_markdown_folding_disabled = 1
