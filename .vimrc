set nocompatible
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'lervag/vimtex'
    Plugin 'inside/vim-search-pulse'
    Plugin 'morhetz/gruvbox'
    Plugin 'rhysd/vim-grammarous'
    Plugin 'robertmeta/nofrils'
    Plugin 'ap/vim-css-color'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'dense-analysis/ale'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'vim-airline/vim-airline'
    Plugin 'wakatime/vim-wakatime'
    Plugin 'junegunn/goyo.vim'
    Plugin 'reroche/vim-markdown-preview'
    Plugin 'vimwiki/vimwiki'
    Plugin 'andreypopp/vim-colors-plain'
    Plugin 'mzlogin/vim-markdown-toc'
    call vundle#end()            " required

    "nmap <leader>ac  <Plug>(coc-codeaction)
    "nmap <leader>qf  <Plug>(coc-fix-current)
"inoremap <silent><expr> <Tab> coc#refresh()


    " GoTo code navigation.
"    nmap <silent> gd <Plug>(coc-definition)
"    nmap <silent> gy <Plug>(coc-type-definition)
"    nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

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
"set t_Co=16
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
                      let vim_markdown_preview_toggle=1
                      let vim_markdown_preview_temp_file=1
                      let vim_markdown_preview_pandoc=1
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
            "set cursorcolumn

            hi CursorLine cterm=underline ctermfg=white
            let g:airline_theme='lucius'
            let g:airline#extensions#tabline#enabled = 1
            let g:airline_powerline_fonts = 1
            let g:airline#extensions#wordcount#filetypes = '\vasciidoc|help|mail|markdown|markdown.pandoc|org|rst|tex|text'
            let g:hybrid_custom_term_colors = 1
            let g:hybrid_reduced_contrast = 1

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
        let g:gruvbox_contrast_dark = 'medium'
        let g:gruvbox_contrast_light = 'soft'

        set background=dark
        colorscheme peachpuff

        let g:better_whitespace_enabled=1
        let g:strip_whitespace_on_save=1
        let g:strip_whitespace_confirm=0
        let g:nofrils_heavylinenumbers=1
        "        hi CursorLine   cterm=underline ctermbg=black ctermfg=white guibg=darkred guifg=white
        "        hi Cursorcolumn cterm=underline ctermbg=black ctermfg=white guibg=darkred guifg=white
        set cursorline

        let g:vim_search_pulse_mode = 'cursor_line'

