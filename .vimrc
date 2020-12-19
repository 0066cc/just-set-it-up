" Plugins Setup
set nocompatible
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

"Plugins
call vundle#begin()
" Vim Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'inside/vim-search-pulse'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'ap/vim-css-color'
" Themes
Plugin 'morhetz/gruvbox'
Plugin 'andreypopp/vim-colors-plain'
Plugin 'robertmeta/nofrils'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mzlogin/vim-markdown-toc'
call vundle#end()

" Mappings
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
let g:vimwiki_folding = 'syntax'
let g:vimwiki_auto_chdir = 1
let g:markdown_fold_style = 'syntax'
let g:vmt_auto_update_on_save = 1
let g:vimwiki_list = [{'path': '~/Documents/git/Life/wiki/', 'auto_tags':1, 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_hl_headers = 1
set cursorline
set cursorcolumn

" Airline
let g:airline_theme='hybrid'
let g:airline_powerline_fonts = 0
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 0

" CTRL+P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Misc
let g:vim_search_pulse_mode = 'cursor_line'

" Vim
syntax on
colorscheme gruvbox
hi CursorLine cterm=underline ctermfg=white
set textwidth=72
set tabstop=4
set shiftwidth=0
set expandtab
set autoindent
set number
set hlsearch
set incsearch
set showcmd
set hidden
set ruler
set autochdir
set nojoinspaces
set wildmenu
set background=dark
set sidescroll=8
set ruler
set cc=80

" File Formatting
autocmd FileType c setlocal noet ts=8 sw=8 tw=80
autocmd FileType h setlocal noet ts=8 sw=8 tw=80
autocmd FileType cpp setlocal noet ts=8 sw=8 tw=80
autocmd FileType s setlocal noet ts=8 sw=8
autocmd FileType sh setlocal noet ts=4 sw=4
autocmd BufRead,BufNewFile *.js setlocal et ts=2 sw=2
autocmd FileType html setlocal et ts=2 sw=2
autocmd FileType ruby setlocal et ts=2 sw=2
autocmd FileType markdown setlocal tw=80 et ts=2 sw=2
autocmd FileType text setlocal tw=80
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd FileType python setlocal et ts=4 sw=4
autocmd FileType tex hi Error ctermbg=NONE
