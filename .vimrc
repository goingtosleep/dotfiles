call plug#begin('~/.vim/plugged')	
    Plug 'tpope/vim-sensible'
    Plug '907th/vim-auto-save'
    Plug 'farmergreg/vim-lastplace'
    Plug 'junegunn/vim-easy-align'
    Plug 'unblevable/quick-scope'
    Plug 'foosoft/vim-argwrap'
    Plug 'machakann/vim-highlightedyank'
    Plug 'easymotion/vim-easymotion'
    Plug 'rhysd/clever-f.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'eapache/auto-pairs'
    Plug 'Yggdroot/hiPairs'
    Plug 'machakann/vim-sandwich'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ervandew/supertab'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'wellle/tmux-complete.vim'
    "Plug 'ncm2/ncm2'
	"Plug 'roxma/nvim-yarp'
	"Plug 'ncm2/ncm2-bufword' "Words in buffer completion
	"Plug 'ncm2/ncm2-path' "Path completion
	"Plug 'HansPinckaers/ncm2-jedi' "Faster fork of ncm2-jedi
	"Plug 'davidhalter/jedi-vim'
    Plug 'jpalardy/vim-slime', {'for': ['python', 'julia']}
    Plug 'hanschen/vim-ipython-cell', {'for': ['python']}
    Plug 'dkarter/bullets.vim'
    Plug 'SirVer/ultisnips'
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} "Async neovim semantics highlight

    Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'tpope/vim-markdown'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'

    "Plug 'meatballs/vim-xonsh'
    "Plug 'zah/nim.vim'

	Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "Plug 'Yggdroot/indentLine'
    "Plug 'lukas-reineke/indent-blankline.nvim'
    "Plug 'Vimjas/vim-python-pep8-indent'

	Plug 'digitaltoad/vim-pug'
	Plug 'dNitro/vim-pug-complete', { 'for': ['pug'] }
	Plug 'kchmck/vim-coffee-script'
	Plug 'iloginow/vim-stylus'

    "Plug 'haya14busa/incsearch.vim'
    Plug 'luochen1990/rainbow'

    Plug 'JuliaEditorSupport/julia-vim'
    Plug 'mroavi/vim-julia-cell'
    
    Plug 'dag/vim-fish'
    Plug 'MattesGroeger/vim-bookmarks'

    "Plug 'kalekundert/vim-coiled-snake'
    "Plug 'Konfekt/FastFold'

call plug#end()

" indentLine
	"let g:indentLine_char = '▏'
	"let g:indent_blankline_char = '▏'
	"let g:indent_blankline_filetype = ['python', 'pug', 'coffee', 'typescript']
    "let g:indent_blankline_extra_indent_level = -1
	"let g:indentLine_concealcursor = ''

" Set default shell
    set shell=/usr/bin/bash

" Colorscheme
    syntax on
    colorscheme dracula
    "colorscheme space
    au ColorScheme * hi Normal ctermbg=None

" Remap Leader key
	let mapleader = " "
	let g:mapleader = " "
	"let maplocalleader = ";"
	"let g:maplocalleader = ";"
	nnoremap <SPACE> <Nop>

" Easymotion config
    let g:EasyMotion_smartcase = 1
    let g:EasyMotion_use_smartsign_us = 1
    let g:EasyMotion_move_highlight = 0
    let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj'

" Jedi options
	let g:jedi#auto_initialization = 1
	let g:jedi#completions_enabled = 0
	let g:jedi#auto_vim_configuration = 0
	let g:jedi#smart_auto_mappings = 0
	let g:jedi#popup_on_dot = 0
	let g:jedi#documentation_command = "<Leader>D"
	let g:jedi#completions_command = ""
	let g:jedi#goto_stubs_command = ""
	let g:jedi#show_call_signatures = "2"
	let g:jedi#use_tabs_not_buffers = 1
	let g:jedi#show_call_signatures_modes = 'i'  "ni = also in normal mode
	let g:jedi#enable_speed_debugging=0

" Autocompletion
	set completeopt=menuone,noselect,noinsert
	set shortmess+=c
	set pumheight=10

" Ncm2 settings
	"let g:ncm2_jedi#source = { 'scope': ['python', 'coconut'] }
	"autocmd BufEnter * call ncm2#enable_for_buffer()
	inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
	"let ncm2#popup_delay = 5
	"let ncm2#complete_length = [[1, 1]]
	"let g:ncm2#matcher = 'substrfuzzy' "Use new fuzzy based matches


" Supertab
	let g:SuperTabDefaultCompletionType = "<c-y>"

" Semshi
	let g:semshi#mark_selected_nodes = 0
	let g:semshi#error_sign = v:false
    let g:semshi#filetypes = ['python', 'coconut']
    let g:semshi#excluded_hl_groups = ['local', 'builtin', 'unresolved']

" Change brackets highlight to underline
    let g:hiPairs_hl_matchPair = { 'term'    : 'underline',
    \			                   'cterm'   : 'underline',
    \			                   'ctermfg' : 'NONE',
    \			                   'ctermbg' : 'NONE',
    \			                   'gui'     : 'underline',
    \			                   'guifg'   : 'NONE',
    \			                   'guibg'   : 'NONE' }

" NERD Commenter
	let g:NERDSpaceDelims = 0
	let g:NERDCompactSexyComs = 1
	let g:NERDDefaultAlign = 'left'
	let g:NERDAltDelims_java = 1
	let g:NERDCustomDelimiters = { 'coconut': { 'left': '# ','right': '' }, 
								\ 'imba': { 'left': '# ','right': '' },
								\ 'typescript': { 'left': '# ','right': '' },
								\ 'stylus': { 'left': '// ','right': '' }
	                            \}
	let g:NERDCommentEmptyLines = 0
	let g:NERDTrimTrailingWhitespace = 1
    let g:NERDToggleCheckAllLines = 1
	let g:NERDCreateDefaultMappings = 0
    nnoremap - :call NERDComment(0,"toggle")<CR>
	vnoremap - :call NERDComment(0,"toggle")<CR>

" Vim-airline config
	let g:airline_powerline_fonts = 1
    let g:airline_theme='deus'
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#fnamemod = ':t'
	let g:airline#extensions#tabline#show_splits = 0
	let g:airline#extensions#tabline#show_buffers = 0
	let g:airline#extensions#tabline#show_tabs = 1
	let g:airline#extensions#tabline#show_tab_nr = 0
	let g:airline#extensions#tabline#show_tab_type = 0	"let g:airline#extensions#tabline#close_symbol = '×'
	let g:airline#extensions#tabline#close_symbol = '◀'
	let g:airline#extensions#tabline#show_close_button = 0
	let g:airline_section_error = ""
	let g:airline_section_warning = ""
	call airline#parts#define_accent('mode', 'none')

" Slime configs
	let g:slime_target = 'tmux'
	let g:slime_python_ipython = 1
	let g:slime_default_config = {
		\ 'socket_name': get(split($TMUX, ','), 0),
		\ 'target_pane': '{top-left}' }
	let g:slime_dont_ask_default = 1

" Ipython-cell configs
	let g:ipython_cell_delimit_cells_by = 'tags'
    "let g:ipython_cell_delimit_cells_by = 'marks'
	autocmd FileType python nnoremap <buffer> <Leader>r :IPythonCellRun<CR>
	autocmd FileType python nnoremap <buffer> <Leader>R :IPythonCellRunTime<CR>
	autocmd FileType python nnoremap <buffer> <Leader>c :IPythonCellExecuteCell<CR>
	autocmd FileType python nnoremap <buffer> <Leader>C :IPythonCellExecuteCellJump<CR>
	autocmd FileType python nnoremap <buffer> <Leader>l :IPythonCellClear<CR>
	autocmd FileType python nnoremap <buffer> <Leader>x :IPythonCellClose<CR>
	autocmd FileType python nnoremap <buffer> [[ :IPythonCellPrevCell<CR>
	autocmd FileType python nnoremap <buffer> ]] :IPythonCellNextCell<CR>
	autocmd FileType python nnoremap <buffer> <Leader>f :SlimeSendCurrentLine<CR>
	autocmd FileType python nnoremap <buffer> <F5> :w<CR>:IPythonCellRun<CR>
	autocmd FileType python inoremap <buffer> <F5> <C-o>:w<CR><C-o>:IPythonCellRun<CR>
	autocmd FileType python nnoremap <buffer> <F6> :IPythonCellExecuteCell<CR>
	autocmd FileType python inoremap <buffer> <F6> <C-o>:IPythonCellExecuteCell<CR>
	autocmd FileType python nnoremap <buffer> <F7> :IPythonCellExecuteCellJump<CR>
	autocmd FileType python inoremap <buffer> <F7> <C-o>:IPythonCellExecuteCellJump<CR>


    autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window 'vim | " . expand("%:t") . "'")

" Lastplace
	let g:lastplace_ignore_buftype = "quickfix,nofile,help"
	let g:lastplace_open_folds = 0

" Vim-markdown
	let g:vim_markdown_folding_disabled = 0
	let g:vim_markdown_folding_style_pythonic = 1
	let g:vim_markdown_folding_level = 2
	let g:vim_markdown_math = 1
	let g:vim_markdown_strikethrough = 1
	let g:vim_markdown_no_extensions_in_markdown = 1
	let g:vim_markdown_new_list_item_indent = 0
	autocmd BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown

" Bullets.vim
	let g:bullets_enabled_file_types = [
		\ 'markdown',
		\ 'text',
		\ 'gitcommit',
		\ 'scratch'
		\]

" Easy align
	vmap ga <Plug>(EasyAlign)
	nmap ga <Plug>(EasyAlign)

" Argwrap
	nnoremap <silent> <Leader>a :ArgWrap<CR>
    let g:argwrap_wrap_closing_brace = 1
    let g:argwrap_tail_comma = 1
    "let g:argwrap_tail_indent_braces = '(,[,{'

" Autosave
	let g:auto_save = 1
	let g:auto_save_silent = 1
	let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Cleverf
	let g:clever_f_across_no_line = 1
	let g:clever_f_chars_match_any_signs = ';'
	let g:clever_f_timeout_ms = 4000
    let g:clever_f_smart_case = 0

" NerdTree toggle
	"nnoremap <Leader>b :NERDTreeToggle<CR>

" Sexy scroll
	let g:SexyScroller_ScrollTime = 2
	let g:SexyScroller_CursorTime = 0
	let g:SexyScroller_EasingStyle = 2
	let g:SexyScroller_MaxTime = 400

 "Auto reload file content by activate autoread on focus
    autocmd FocusGained,BufEnter * :checktime

" Tagbar
    nmap <F8> :TagbarToggle<CR>
    let g:tagbar_type_AbaqusINP = {
    \ 'ctagstype' : 'coconut',
    \ 'kinds' : [
        \ 'm:methods',
    \ ],
    \ 'sort' : 0
    \ }


" Autopairs
    let g:AutoPairsOnlyWhitespace = 0

" Ibus handle
    function! IBusOff()
    " Lưu engine hiện tại
    let g:ibus_prev_engine = system('ibus engine')
    " Chuyển sang engine tiếng Anh
    execute 'silent !ibus engine xkb:us::eng'
    endfunction
    function! IBusOn()
    let l:current_engine = system('ibus engine')
    " nếu engine được set trong normal mode thì
    " lúc vào insert mode duùn luôn engine đó
    if l:current_engine !~? 'xkb:us::eng'
        let g:ibus_prev_engine = l:current_engine
    endif
    " Khôi phục lại engine
    execute 'silent !' . 'ibus engine ' . g:ibus_prev_engine
    endfunction
    augroup IBusHandler
        autocmd CmdLineEnter [/?] call IBusOn()
        autocmd CmdLineLeave [/?] call IBusOff()
        autocmd InsertEnter * call IBusOn()
        autocmd InsertLeave * call IBusOff()
    augroup END
    call IBusOff()

" Vimtex
    "let g:tex_flavor = 'latex'
    "let g:vimtex_view_method = 'zathura'
    "let g:vimtex_quickfix_mode = 0
    "let g:vimtex_fold_enabled = 1
    "let g:vimtex_matchparen_enabled = 0
    "autocmd FileType tex nnoremap <buffer> <Leader>f :execute "normal \<Plug>(vimtex-view)"<CR>
	"autocmd FileType tex nnoremap <buffer> <F5> :execute "normal \<Plug>(vimtex-compile)"<CR>
	"autocmd FileType tex nnoremap <buffer> <Leader>t :execute "normal \<Plug>(vimtex-toc-toggle)"<CR>
	"autocmd FileType tex nnoremap <buffer> <Leader>e :execute "normal \<Plug>(vimtex-errors)"<CR>
	"autocmd FileType tex nnoremap <buffer> <Leader>g :wincmd gF<CR>
    "autocmd FileType tex :HiPairsDisable
    "let g:vimtex_compiler_progname = 'nvr --remote-tab'
	"nnoremap <BS> <C-^>

    "let  g:vimtex_fold_types = {
    "    \ 'preamble' : {'enabled' : 1},
    "    \ 'sections': {'enabled': 0},
    "    \}

" Vim-conceal
    set conceallevel=2
    let g:tex_conceal='abdmg'
    let g:tex_conceal_frac=1
    let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
    let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"

    
" UltiSnips
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<a-l>'
    let g:UltiSnipsJumpBackwardTrigger = '<a-h>'

" Vim-pandoc
    let g:pandoc#spell#enabled = 0
    let g:pandoc#modules#disabled = ["folding"]

    augroup pandoc_syntax
        au! BufNewFile,BufFilePre,BufRead *.md call SetMarkdown()
    augroup END
    function SetMarkdown()
        set ft=pandoc
        set syntax=pandoc
    endfunction



" Devicons
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tex'] = '∑'

" fzf
    nnoremap <C-P> :Files<CR>
    nnoremap <C-B> :Buffers<CR>
    nnoremap <A-/> :Lines<CR>
    let g:fzf_action = {
    \ 'ctrl-m': 'tabedit',
    \ 'ctrl-o': 'e',
    \ 'ctrl-t': 'tabedit',
    \ 'ctrl-h':  'botright split',
    \ 'ctrl-v':  'vertical botright split' }

" Xonsh
    augroup xonsh_syntax
        au! BufNewFile,BufFilePre,BufRead *.xsh call SetXonsh()
    augroup END
    function SetXonsh()
        set ft=python
        set syntax=xonsh
    endfunction

" coc nvim
    if $CONDA_PREFIX == ""
    let s:current_python_path=$CONDA_PYTHON_EXE
    else
    let s:current_python_path=$CONDA_PREFIX.'/bin/python'
    endif
    call coc#config('python', {'pythonPath': s:current_python_path})


" coffeescript
    augroup coffee_syntax
        au! BufNewFile,BufFilePre,BufRead *.coffee call SetCoffee()
    augroup END
    function SetCoffee()
        set ft=typescript
    endfunction

" stylus
    augroup stylus_syntax
        au! BufNewFile,BufFilePre,BufRead *.styl call SetStylus()
    augroup END
    function SetStylus()
        set ft=css
    endfunction

" rainbow
    let g:rainbow_active = 1
    let g:rainbow_conf = {
    \	'ctermfgs': ['blue', 'magenta', 'yellow', 'cyan']
    \}

"julia
    let g:latex_to_unicode_suggestions = 0
    let g:latex_to_unicode_tab = 0
    let g:latex_to_unicode_file_types = '$^'
    let g:latex_to_unicode_file_types_blacklist = '.*'
    let g:julia_cell_delimit_cells_by = 'tags'
	autocmd FileType julia nnoremap <buffer> <Leader>r :JuliaCellRun<CR>
	autocmd FileType julia nnoremap <buffer> <Leader>R :JuliaCellRunTime<CR>
	autocmd FileType julia nnoremap <buffer> <Leader>c :JuliaCellExecuteCell<CR>
	autocmd FileType julia nnoremap <buffer> <Leader>C :JuliaCellExecuteCellJump<CR>
	autocmd FileType julia nnoremap <buffer> <Leader>l :JuliaCellClear<CR>
	autocmd FileType julia nnoremap <buffer> <Leader>x :JuliaCellClose<CR>
	autocmd FileType julia nnoremap <buffer> [[ :JuliaCellPrevCell<CR>
	autocmd FileType julia nnoremap <buffer> ]] :JuliaCellNextCell<CR>
	autocmd FileType julia nnoremap <buffer> <Leader>f :SlimeSendCurrentLine<CR>

" vim bookmarks
    function! ToggleSignColumn()
        if !exists("b:signcolumn_on") || b:signcolumn_on
            set signcolumn=no
            let b:signcolumn_on=0
        else
            set signcolumn=auto
            let b:signcolumn_on=1
        endif
    endfunction
    let g:bookmark_auto_close = 1
    nnoremap <Leader>b :call ToggleSignColumn()<CR>
    let g:bookmark_save_per_working_dir = 1
    let g:bookmark_auto_save = 1

"SETTINGS""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	set nocompatible 
	set background=dark
	set encoding=UTF-8
	set title
	set mouse=a
	set clipboard=unnamedplus
	set ttyfast

	set backupdir=~/.vim/backups
	set undodir=~/.vim/undodir
	set viminfo='100,<50,s10,h,%,n~/.vim/viminfo

	set undofile
	set noswapfile
	
	set autoread
	set autowrite
	set autowriteall

    set number relativenumber
	set noshowmode
	set hidden
	set linebreak

	set showmatch
	set ignorecase
	set smartcase
    set smarttab
	set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
	set shiftround

	set autoindent
	set copyindent
	set breakindent

    set nohlsearch
    set incsearch

    set backspace=indent,eol,start
	set timeout timeoutlen=1000 ttimeoutlen=50
    let g:loaded_matchparen=1

	set pastetoggle=<F2>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Close with <C-w> and save with <C-s>
	"nnoremap <C-w> :bd<CR>
    "autocmd BufDelete * if len(filter(range(1, bufnr('$')), '! empty(bufname(v:val)) && buflisted(v:val)')) == 1 | quit | endif
    nnoremap <C-w> :q<CR>
	noremap <silent> <C-S> :update<CR>

" Normal copy/paste with <C-c> and <C-v>
	vnoremap <C-c> y
	vnoremap <C-x> x
	nnoremap <C-v> p
	inoremap <C-v> <Esc>pi

" Actually delete with x in Normal mode
	nnoremap x "_x
	nnoremap X "_X
	nnoremap s "_s
	nnoremap D "_D
	
" Remap d to cut to register d
	nnoremap d "dd
	vnoremap d "dd

" Paste from register a
	nnoremap <Leader>p "dp
	nnoremap <Leader>P "dP

" Change text without interferring the clipboard
	nnoremap c "cc
	vnoremap c "cc

" Undo and redo
	nnoremap <C-z> u
    nnoremap U <C-r>
	inoremap <C-z> <Esc>ui
    inoremap <C-y> <Esc><C-r>i

" Select all
	inoremap <C-a> <Esc>gg0VG$i
	nnoremap <C-a> gg0VG$

" Tab to indent blocks
	vnoremap > >gv
	vnoremap < <gv
	nnoremap <Tab> >>_
	nnoremap <S-Tab> <<_
	inoremap <S-Tab> <C-D>
    vnoremap <Tab> >gv
    vnoremap <S-Tab> <gv

" Movements
	nnoremap k gk
	nnoremap j gj
	nnoremap 0 g0
	nnoremap ^ g^

" Map 0 to the first non whitespace char
	nnoremap <Leader>0 0
	vnoremap <Leader>0 0
	nnoremap 0 ^
	nnoremap $ g_
	vnoremap 0 ^
	vnoremap $ g_

" Faster horizontal navigation
	nnoremap K 12k
	nnoremap J 12j
	vnoremap K 12k
	vnoremap J 12j
	
" Tabs navigation
	nnoremap tl :tabnext<CR>
	nnoremap th :tabprev<CR>
	nnoremap tH :tabfirst<CR>
	nnoremap tL :tablast<CR>
	nnoremap tT :tabnew#<CR>:tabmove -1<CR>
    nnoremap <A-1> 1gt
    nnoremap <A-2> 2gt
    nnoremap <A-3> 3gt
    nnoremap <A-4> 4gt
    nnoremap <A-5> 5gt
    nnoremap <A-6> 6gt
    nnoremap <A-7> 7gt
    nnoremap <A-8> 8gt
    nnoremap <A-9> 9gt

" Tabnew and tabmove
	nnoremap tn :tabnew 
	nnoremap tm :tabmove 

" Move tabs
	nnoremap tj :tabmove -1<CR>
	nnoremap tk :tabmove +1<CR>

" Easier to enter visual block mode
	nnoremap <Leader>v <C-V>
	vnoremap <Leader>v <C-V>

" Change cursor when changing modes
    set guicursor=n-v:block,i-c-ci:ver50-blinkwait500-blinkoff300-blinkon250,o-r-cr:hor50

" Insert a new line without leaving Normal mode
	nnoremap <Leader>o o<Esc>
	nnoremap <Leader>O O<Esc>

" Stop auto adding comment on new line
	au BufEnter * set fo-=c fo-=r fo-=o

" Select texts in Insert mode
	inoremap <S-Left> <Esc>vh
	inoremap <S-Right> <Esc>vl

" sudo vim
	cnoremap w!! w !sudo tee % > /dev/null

" Map X, Y, C 
	"nnoremap X vg_x
	nnoremap Y vg_y
	nnoremap <Leader>V vg_
	nnoremap C "_C

" U to redo
    nnoremap U <C-r>

" Signature
	nmap <Leader>m :SignatureToggleSigns<CR>

" Force write shada on leaving nvim (update deleted marks on nvim)
	autocmd VimLeave * if has('nvim') | wshada! | else | wviminfo! | endif

" Forward a character in Insert mode
	inoremap <C-l> <Right>

" Remap vim-surround
    vmap s <Plug>(operator-sandwich-add)
    nmap s <Plug>(operator-sandwich-add)
    nmap sc sr
    nmap ss 0v$sa
    nmap S v$sa

" Remap easymotion
	nmap <Leader>s <Plug>(easymotion-overwin-f2)
	nmap \ <Plug>(easymotion-overwin-f2)
	nmap <Leader>j <Plug>(easymotion-j)
	nmap <Leader>k <Plug>(easymotion-k)
	vmap <Leader>j <Plug>(easymotion-j)
	vmap <Leader>k <Plug>(easymotion-k)

" Change highlight color for cleverf and quickscope
	highlight CleverFDefaultLabel ctermfg=226 cterm=underline
    highlight QuickScopePrimary ctermfg=198
    highlight QuickScopeSecondary ctermfg=198 cterm=underline

" Search the selected text with //
	vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Map ;; to : 
	nnoremap ; :
	vnoremap ; :

" Fast movements in Insert mode
    inoremap <A-a> <Esc>A:<CR>
    inoremap <A-A> <Esc>A
    inoremap <A-l> <Right>
    inoremap <A-h> <Left>
    inoremap <A-x> <Esc>lxi

" Quick replace
    vnoremap \ :s//g<Left><Left>
    
" Inkscape
    inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.'%:p:h'.'/figures/"'<CR><CR>:w<CR>
    nnoremap <C-f> : silent exec '!inkscape-figures edit "'.'%:p:h'.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

" incsearch
    "let g:incsearch#auto_nohlsearch = 1
    "map / <Plug>(incsearch-forward)
    "map ? <Plug>(incsearch-backward)
    "map g/ <Plug>(incsearch-stay)
    "map n <Plug>(incsearch-nohl-n)
    "map N <Plug>(incsearch-nohl-N)
    "map * <Plug>(incsearch-nohl-*)
    "map # <Plug>(incsearch-nohl-#)
    "map g* <Plug>(incsearch-nohl-g*)
    "map g# <Plug>(incsearch-nohl-g#)

"
function Indent()
    set ts=2 sts=2 noet
    retab!
    set ts=4 sts=4 et
    retab
endfunction
nnoremap <Leader>i :call Indent
autocmd VimEnter * hi! Conceal cterm=NONE ctermbg=NONE ctermfg=darkblue
