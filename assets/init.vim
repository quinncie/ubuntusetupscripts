" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/MatchTagAlways'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'
Plug 'rust-lang/rust.vim'
" Initialize plugin system
call plug#end()

set shell=/usr/bin/bash
colo badwolf
set exrc
set secure
syntax enable
set nocompatible
set hlsearch
set encoding=utf-8
set fileencoding=utf-8
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set pastetoggle=<f2>
set backspace=indent,eol,start
set colorcolumn=80
highlight ColorColumn ctermbg=red guibg=red
let g:python3_host_prog='/usr/bin/python3'

" Insert the date and time at the cursor
inoremap <expr> <C-f> strftime('%Y-%m-%dT%H:%M:%S-07:00')
" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" :WP Command runs this
func! WordProcessorMode() 
  setlocal formatoptions+=ta
  setlocal tw=79
  setlocal noexpandtab 
  setlocal spell spelllang=en_us 
  setlocal spellfile=$HOME/.config/nvim/spell/en.utf-8.add
  setlocal noautoindent
  setlocal nosmartindent
  setlocal complete+=s
  setlocal formatprg=par
  setlocal tabstop=5
  nnoremap j gj
  nnoremap k gk
  set ignorecase
endfu 
com! WP call WordProcessorMode()
" groff/nroff/troff settings
autocmd bufreadpre *.tr setlocal tw=79
autocmd bufreadpre *.ms setlocal tw=79
