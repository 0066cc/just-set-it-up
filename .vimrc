set nocompatible
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'lervag/vimtex'
Plugin 'inside/vim-search-pulse'
Plugin 'morhetz/gruvbox'
Plugin 'robertmeta/nofrils'
Plugin 'ap/vim-css-color'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'wakatime/vim-wakatime'
Plugin 'vimwiki/vimwiki'
Plugin 'andreypopp/vim-colors-plain'
Plugin 'mzlogin/vim-markdown-toc'
call vundle#end()            " required

map q <Nop>
noremap <up> <nop>
inoremap <up> <nop>
noremap <down> <nop>
inoremap <down> <nop>
noremap <left> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap <right> <nop>
" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
hi MatchParen ctermbg=5
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set scrolloff=12
set encoding=utf-8
set wildmenu
" Wiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_folding = 'expr'
let g:vimwiki_auto_chdir = 1
let g:markdown_fold_style = 'nested'
let g:vmt_auto_update_on_save = 1
let g:vimwiki_list = [{'path': '~/Documents/git/Life/wiki/', 'auto_tags':1, 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_hl_headers = 1
set cursorline
set cursorcolumn

hi CursorLine cterm=underline ctermfg=white
let g:airline_theme='hybrid'
let g:airline_powerline_fonts = 0
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 0

set background=light
colorscheme nofrils-acme
let g:vim_search_pulse_mode = 'cursor_line'

set hlsearch    " highlight all search results
set ignorecase  " do case insensitive search 
set incsearch   " show incremental search results as you type
set number      " display line number
