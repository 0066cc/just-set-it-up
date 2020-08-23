set nocompatible 
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'ycm-core/YouCompleteMe'
    Plugin 'NLKNguyen/papercolor-theme'
    Plugin 'rakr/vim-one'
    Plugin 'kyoz/purify'
    Plugin 'arcticicestudio/nord-vim'
    Plugin 'camspiers/animate.vim'
    Plugin 'camspiers/lens.vim'
    Plugin 'morhetz/gruvbox'
    Plugin 'rhysd/vim-grammarous'
    Plugin 'ap/vim-css-color'
    Plugin 'cocopon/iceberg.vim'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'pangloss/vim-javascript'    " JavaScript support
    Plugin 'leafgarland/typescript-vim' " TypeScript syntax
    Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
    Plugin 'mattn/emmet-vim'
    Plugin 'frazrepo/vim-rainbow'
    Plugin 'dense-analysis/ale'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'vim-airline/vim-airline'
    Plugin 'Raimondi/delimitMate'
    Plugin 'wakatime/vim-wakatime'
    Plugin 'junegunn/goyo.vim'
    Plugin 'lervag/vimtex'
    Plugin 'JamshedVesuna/vim-markdown-preview'
    Plugin 'vimwiki/vimwiki'
    Plugin 'mzlogin/vim-markdown-toc'
    call vundle#end()            " required

    " Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
    " Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
    " Show autocomplete when Tab is pressed
inoremap <silent><expr> <Tab> coc#refresh()


    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
    " Settings
    set conceallevel=1
    set nofoldenable          " enable folding
    set foldlevelstart=5   " open most folds by defaultset foldmethod=indent   " fold based on indent level
    set foldmethod=indent
    set hlsearch
    set spelllang=en_gb
    set breakindent
    set formatoptions=l
    set lbr
    set scrolloff=12
    set encoding=utf-8
    set incsearch
    set t_Co=256
    set showmode
    set showmatch
    set showcmd
    set ruler
    set vb
    set backspace=2
    set mousehide
    set wildmenu
    set tabstop=4             " 4 spaces
    set textwidth=0
    set shiftwidth=4          " 4 spaces
    set softtabstop=4         " 4 spaces
    set expandtab             " Expand tabs to spaces
    set wrapscan
    set ignorecase
    set smartcase
    set lazyredraw
    set title
    setlocal cindent
    setlocal cino=j1,(0,ws,Ws
                      set foldcolumn=0
                      set ff=unix
                      set fo+=t
                      set wrap 
                      set linebreak 
                      syntax enable" Syntax highlighting
                      " MarkDown
                      let vim_markdown_preview_github=1
                      let vim_markdown_preview_toggle=0
                      let vim_markdown_preview_temp_file=0
                      autocmd BufEnter *.md exec 'noremap <F4> :!mdless %:p<CR>'
                      let vim_markdown_preview_hotkey='<F5>'
                      au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown
                      " Wiki
                      let g:vimwiki_use_mouse = 1
                      let g:vimwiki_folding = 'expr'
                      let g:vimwiki_auto_chdir = 1
                      let g:markdown_fold_style = 'nested'
                      let g:vmt_auto_update_on_save = 1
                      let g:vimwiki_list = [{'path': '~/Documents/git/Life/wiki/', 'auto_tags':1, 'syntax': 'markdown', 'ext': '.md'}]
    let g:vimwiki_hl_headers = 1
    " Misc
    set autoindent
    set formatoptions+=r
    nmap <F3> i<C-R>=strftime("%d\/%m-%H:%M")<CR><Esc>
    imap <F3> <C-R>=strftime("%d\/%m-%H:%M")<CR>
    au BufNewFile,BufRead *.kt  setf kotlin 

    " Goyo
    function! s:goyo_enter()
    if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    endif
    endfunction
    function! s:goyo_leave()
    if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    endif
    set showmode
    set showcmd
    set scrolloff=12
    "AirlineToggle
    endfunction
    let g:wp_mode_is_on = 0
    nnoremap <Leader>g :Goyo<CR>
    let g:goyo_width = 80
    let g:goyo_height = 120

    autocmd FileType markdown set conceallevel=2
    autocmd FileType markdown setlocal spell spelllang=en_gb
    "autocmd FileType markdown Goyo
    let g:vim_markdown_conceal = 2
    let g:vim_markdown_conceal_code_blocks = 0
    let g:vim_markdown_math = 1
    let g:vim_markdown_toml_frontmatter = 1
    let g:vim_markdown_frontmatter = 1
    let g:vim_markdown_strikethrough = 1
    let g:vim_markdown_autowrite = 1
    let g:vim_markdown_edit_url_in = 'tab'
    let g:vim_markdown_follow_anchor = 1
    set mouse=a
    let g:vim_jsx_pretty_highlight_close_tag = 1
    let g:vim_jsx_pretty_colorful_config = 1 " default 0
    let g:ale_linters = {
        \   'javascript': ['eslint'],
        \}
    highlight clear ALEErrorSign

        function! LinterStatus() abort

        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors

        return l:counts.total == 0 ? 'OK' : printf(
            \   '%dW %dE',
            \   all_non_errors,
            \   all_errors
            \)
            let l:counts = ale#statusline#Count(bufnr(''))
            endfunction

            highlight clear ALEWarningSign
            set cursorline
            hi CursorLine cterm=underline ctermfg=white
            let g:airline_theme='papercolor'
            set nocursorcolumn 
            let g:airline#extensions#tabline#enabled = 1
            let g:airline_powerline_fonts = 1
            let g:hybrid_custom_term_colors = 1
            let g:hybrid_reduced_contrast = 1

            hi CursorLine   cterm=underline ctermbg=NONE ctermfg=NONE guibg=darkred guifg=white
            "hi CursorColumn cterm=underline ctermbg=NONE ctermfg=yellow guibg=darkred guifg=white

            augroup CursorLine
            au!
            au VimEnter,WinEnter,BufWinEnter * setlocal cursorline 
            au WinLeave * setlocal nocursorline
            augroup END
            let b:ale_warn_about_trailing_whitespace = 0
            let g:rainbow_active = 1
            let g:user_emmet_leader_key=','
            let g:ale_completion_enabled = 1
            set number
            let g:ale_sign_error = '!'
            let g:ale_sign_warning = '?'
            let g:ale_linters = { 'javascript': ['eslint'] }
    let g:ale_fixers = {
        \    'javascript': ['prettier', 'eslint'],
        \    'typescript': ['prettier'],
        \    'react': ['prettier'],
        \    'scss': ['prettier'],
        \    'css': ['prettier', 'stylelint' ],
        \    'html': ['prettier']
            \}
    let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
        let g:ale_lint_on_enter = 1 
        let g:ale_fix_on_save = 1
        let g:neoformat_try_formatprg = 1
        let g:ale_lint_on_text_changed = 'never'
        let g:ale_lint_on_enter = 1
        highlight ALEErrorSign ctermbg=NONE ctermfg=red
        highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
        hi Error ctermfg=Yellow guifg=Red
        let g:jsx_ext_required = 0 " Allow JSX in normal JS files
        let g:gruvbox_bold = 1
        let g:gruvbox_contrast_dark = 'hard'
        let g:gruvbox_contrast_light = 'soft'

    fun! s:wpm() abort
        if get(b:, 'wpm_start', 0) is 0
            let b:wpm_start = [reltime(), wordcount()]
        else
            let l:time = reltime(b:wpm_start[0])
                let l:words = wordcount()['words'] - b:wpm_start[1]['words']
                unlet b:wpm_start
                echom printf('%s WPM; in %s seconds you typed %s words',
                                         \ l:words / max([1, l:time[0] / 60]), l:time[0], l:words)
                endif
    endfun

                command! WPM call s:wpm()

                augroup wpm 
                autocmd! 
                autocmd InsertEnter * :WPM 
                autocmd InsertLeave * :WPM 
                augroup end

        set background=dark
        colorscheme gruvbox
        set tw=120
        set  fo+=t 
        set wm=0
        set statusline=
        set statusline+=%7*\[%n]                                  "buffernr
        set statusline+=%1*\ %<%F\                                "File+path
        set statusline+=%2*\ %y\                                  "FileType
        set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
        set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
        set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
        set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
        set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
        set statusline+=%9*\ col:%03c\                            "Colnr
        set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
        set statusline=%{LinterStatus()}
