" Plugins Setup
set nocompatible
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

"Plugins
call vundle#begin()
" Vim Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'junegunn/goyo.vim'
Plugin 'vimwiki/vimwiki'
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
let g:vimtex_fold_enabled = 0
let g:tex_conceal='abdmg'
" Wiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_auto_chdir = 1
"let g:markdown_fold_style = 'syntax'
let g:vmt_auto_update_on_save = 1
let g:vimwiki_list = [{'path': '~/Documents/git/Life/wiki/', 'auto_tags':1, 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_hl_headers = 1

" Airline
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 0
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Goyo
function! ProseMode()
    call goyo#execute(0, [])
    set nospell noci nosi noai nolist noshowmode noshowcmd
    set complete+=s
endfunction

command! ProseMode call ProseMode()
nmap \p :ProseMode<CR>

augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength cterm=reverse
    autocmd BufEnter * match OverLength /\%79v.*/
augroup END

" Vim
syntax off
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
set background=light
set sidescroll=8
set ignorecase
hi MatchParen ctermbg=5
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set cursorline
set nocursorcolumn
set scrolloff=8
set encoding=utf-8
set t_Co=16
"set columns=80
set tw=80
set wrap
set linebreak
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
set textwidth=0
set wrapmargin=0
set formatoptions-=t
let g:netrw_browsex_viewer='qutebrowser'
set nobackup
au BufRead,BufNewFile *.md set filetype=vimwiki
au FileType markdown setlocal tw=79 colorcolumn=81 
au FileType vimwiki setlocal tw=79 colorcolumn=81
