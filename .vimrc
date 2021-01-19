" Plugins Setup
set nocompatible
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

"Plugins
call vundle#begin()
" Vim Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'rhysd/vim-grammarous'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive' 
Plugin 'lervag/vimtex'
Plugin 'inside/vim-search-pulse'
Plugin 'vimwiki/vimwiki'
Plugin 'ap/vim-css-color'
Plugin 'vim-voom/VOoM'
" Themes
Plugin 'morhetz/gruvbox'
Plugin 'robertmeta/nofrils'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'plan9-for-vimspace/acme-colors'
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
let g:vimtex_fold_enabled = 1
let g:tex_conceal='abdmg'
    " Shortcuts
    "leader+ll - start compiling
    "leader+lv - open pdf
    "leader+lk - stop compiling
    "leader+le - view errors
    "leader+lc - clean files
" Wiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_folding = 'syntax'
let g:vimwiki_auto_chdir = 1
let g:markdown_fold_style = 'syntax'
let g:vmt_auto_update_on_save = 1
let g:vimwiki_list = [{'path': '~/Documents/git/Life/wiki/', 'auto_tags':1, 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_hl_headers = 1

" Airline
let g:airline_theme='deus'
let g:airline_powerline_fonts = 0
let g:hybrid_custom_term_colors = 1 
let g:hybrid_reduced_contrast = 0

" Misc
let g:vim_search_pulse_mode = 'cursor_line'
let g:gruvbox_italic=1
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='soft'

" Vim
syntax on
colorscheme default
set tabstop=4
set shiftwidth=0
set expandtab
set autoindent
set number
set hlsearch
set incsearch
set showcmd
set hidden
set autochdir
set nojoinspaces
set wildmenu
set background=dark
set sidescroll=8
set foldmethod=syntax
set ignorecase
hi MatchParen ctermbg=5
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set cursorline
set cursorcolumn
set scrolloff=12
set encoding=utf-8
set t_Co=256
