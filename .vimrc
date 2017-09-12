" My .vimrc by Mike Engel
"

let mapleader = ","

colorscheme pablo

syntax on
set number
set ruler

set tabstop=4
set softtabstop=4
set expandtab

syntax enable
filetype plugin on
filetype indent on

hi StatusLine ctermbg=3 ctermfg=4

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<cr>

set showcmd
set wildmenu
" set cmdheight=2

"------------------------------------------
"" Status Line
"------------------------------------------
" Always show the status line
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
  highlight statusLine cterm=bold ctermfg=black ctermbg=green
  au InsertLeave * highlight StatusLine cterm=bold ctermfg=black ctermbg=green
  au InsertEnter * highlight StatusLine cterm=bold ctermfg=black ctermbg=red
endif

set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}
