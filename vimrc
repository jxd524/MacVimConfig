"************************************************************
"
"   加载插件管理,使用Vundle管理
"   https://github.com/VundleVim/Vundle.vim
"
"************************************************************
    source ~/.vim/vimrc.bundles

"************************************************************
"
"   YCM插件:
"   https://github.com/Valloric/YouCompleteMe
"
"************************************************************
    let g:ycm_complete_in_comments = 1
    let g:ycm_complete_in_strings = 1
    let g:ycm_collect_identifiers_from_comments_and_strings = 0
    let g:ycm_key_list_select_completion = ['<Down>']
    let g:ycm_key_list_previous_completion = ['<Up>']
    let g:ycm_confirm_extra_conf=0
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_key_invoke_completion = '<D-ESC>'
    let g:ycm_collect_identifiers_from_tags_files=1
    let g:ycm_min_num_of_chars_for_completion = 2 "最小提示字符数量"
    let g:ycm_always_populate_location_list = 1
    "let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
    let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
    let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
    nnoremap <silent> <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
    imap <silent> <F12> <ESC><F12>
    "nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
    "nnoremap <leader>lo :lopen<CR>	"open locationlist
    "nnoremap <leader>lc :lclose<CR>	"close locationlist
    "nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
    "python with virtualenv support
    func! SetPythonBinaryPath(aPath)
        let g:ycm_python_binary_path = a:aPath
    endfunc
py<<EOF
import string
import os
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/python')
    vim.command(":call SetPythonBinaryPath('" + activate_this + "')")
EOF


"************************************************************
"
"   SimpylFold插件:
"   https://github.com/tmhedberg/SimpylFold
"
"************************************************************
    let g:SimpylFold_docstring_preview=1


"************************************************************
"
"   NERDTree 和 NERDTreeTabs插件
"   https://github.com/scrooloose/nerdtree
"   https://github.com/jistr/vim-nerdtree-tabs
"
"************************************************************
    nnoremap <D-1> :NERDTreeToggle<CR><C-w><C-l>
    imap <D-1> <ESC><D-1>a
    let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"************************************************************
"
"   Ultisnips 插件
"   https://github.com/SirVer/ultisnips
"
"************************************************************
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<Tab>"
    let g:UltiSnipsJumpForwardTrigger="<Tab>"
    let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"************************************************************
"
"   jedi-vim 插件
"   https://github.com/davidhalter/jedi-vim
"
"************************************************************
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:jedi#goto_command = "<leader>d"
    let g:jedi#goto_assignments_command = "<leader>g"
    let g:jedi#goto_definitions_command = ""
    let g:jedi#documentation_command = "K"
    let g:jedi#usages_command = "<leader>n"
    let g:jedi#completions_command = "<C-Tab>"
    let g:jedi#rename_command = "<leader>r"

"************************************************************
"
"   vim-easygrep件:
"   https://github.com/dkprice/vim-easygrep
"   
"************************************************************


"************************************************************
"
"   Pydictiond 插件
"   https://github.com/vim-scripts/Pydictiond
"   
"************************************************************
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
""    let g:pydiction_location="/Users/terry/.vim/bundle/Pydiction/complete-dict"
""    let g:pydiction_menu_height = 3

"************************************************************
"
"   Ctrlp插件:
"   https://github.com/kien/ctrlp
"
"************************************************************
""    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
""    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"************************************************************
"
"   vim-markdown插件:
"   https://github.com/plasticboy/vim-markdown
"
"************************************************************
"let g:vim_markdown_frontmatter=1

"************************************************************
"
"   配置主题界面,颜色,高亮等
"
"************************************************************
    syntax enable
    set background=dark
    set t_Co=256
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    colorscheme solarized
    set guifont=Courier\ New:h15

    let python_highlight_all=1
"************************************************************
"
"   常规配置
"
"***********************************************************
    set cursorline
    set cursorcolumn
    set completeopt=menu,preview,longest
    set textwidth=500
    set showmode                    " Display the current mode
    set number                      " Line numbers on
    set wrap                        " Auto wrap long lines, nowrap is not
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set matchpairs+=<:>             " Match, to be used with %
    set tabpagemax=15               " Only show 15 tabs
    set history=1000
    set backspace=indent,eol,start  " Backspace for dummies
    set linespace=0                 " No extra spaces between rows
    set smartcase                   " Case sensitive when uc present
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    set list
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,big5,euc-jp,euc-kr,latin1
    set encoding=utf-8
    filetype plugin indent on   " Automatically detect file types.
    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing
    scriptencoding utf-8
    set autoread
"************************************************************
"
"   搜索设置相关
"
"************************************************************
    set ignorecase                  " Case insensitive search
    set hlsearch
    set incsearch


"************************************************************
"
"    行折叠与缩进
"
"************************************************************
    set foldenable
    set foldmethod=indent
    set foldlevel=99
    au BufNewFile,BufRead *.py,*.h,*.c,*.cpp
        \ set tabstop=4 |
        \ set softtabstop=4 |
        \ set shiftwidth=4 |
        \ set expandtab |
        \ set autoindent |
        \ set fileformat=unix |

    au BufNewFile,BufRead *.js,*.html,*.css
        \ set tabstop=2 |
        \ set softtabstop=2 |
        \ set shiftwidth=2 |


"************************************************************
"
"   自动化命令
"
"************************************************************
"   加载完成
"    func! DoVimEnterHandle()
"        "启动NERDTree插件
"        "exec "NERDTree"
"        "wincmd w
"        normal a
"        "insertmode
"    endfunc
"    au VimEnter * :call DoVimEnterHandle()

"   离开插入模式
    func! DoInsertLeave()
        if pumvisible() == 0
            lclose
        endif
    endfunc
    autocmd InsertLeave * :call DoInsertLeave()



"************************************************************
"
"   其它
"
"************************************************************
    autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif "自动

"************************************************************
"
"   键盘映射
"
"************************************************************

source ~/.vim/vimrc.keybindings

"************************************************************
"
"   代码调试
"
"************************************************************
    autocmd FileType python setlocal makeprg=python\ %
    autocmd FileType lua setlocal makeprg=lua\ %

"************************************************************
"
"   启动时使用插入模式
"
"************************************************************
    startinsert