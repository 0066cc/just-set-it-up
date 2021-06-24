" Plugins Setup
set nocompatible
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

"Plugins
call vundle#begin()
" Vim Plugins
Plugin 'lervag/vimtex'
Plugin 'VundleVim/Vundle.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'dbmrq/vim-ditto'
Plugin 'robertmeta/nofrils'
Plugin 'plan9-for-vimspace/acme-colors'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'preservim/vim-litecorrect'
Plugin 'morhetz/gruvbox'
Plugin 'reedes/vim-colors-pencil'
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
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

" Goyo
function! ProseMode()
    call goyo#execute(0, [])
    "    set nospell noci nosi noai nolist noshowmode 
    "    set complete+=s
endfunction

command! ProseMode call ProseMode()
nmap \p :ProseMode<CR>
nmap \m :MarkdownPreview<CR>

" Vim
syntax off
colorscheme nofrils-dark
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
set ignorecase
hi MatchParen ctermbg=5
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set cursorline
set nocursorcolumn
set scrolloff=8
set encoding=utf-8
set t_Co=256
"set columns=80
set tw=80
set wrap
set linebreak
set textwidth=0
set wrapmargin=0
set formatoptions-=t
let g:netrw_browsex_viewer='microsoft-edge'
set nobackup
set statusline+=%{wordcount().words}\ words
set laststatus=2    " enables the statusline.
set autoread
au FileType markdown,text DittoOn
let g:mkdp_browser = 'surf'

augroup markdown_syntax
autocmd BufNewFile,BufRead *.md syntax on
augroup END

augroup litecorrect
    autocmd!
    autocmd FileType markdown,mkd call litecorrect#init()
    autocmd FileType textile call litecorrect#init()
augroup END
