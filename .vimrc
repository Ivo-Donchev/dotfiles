" My custom material theme + settings
" color dracula
color gruvbox

set number
syntax on
set background=dark

 " Python theme - dracula
 " JS them - gruvbox

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax enable

set hidden

" Better command-line completion
set wildmenu

"enable 256-color mode
set t_Co=256

" For python/ruby development
set iskeyword-=_

" Show partial commands in the last line of the screen
set showcmd

set nohlsearch
set incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

"------------------------------------------------------------
" Indentation options {Y*{{
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

"------------------------------------------------------------
" Mappings
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-a> to select the entire content of the file
nnoremap <C-a> ggVG

" Easier split-screen navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Open and close NerdTree with <C-n>
map <silent> <C-n> :NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.pyc$', '__pycache__']

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Close preview split when completion is done
if exists('#CompleteDone')
    autocmd CompleteDone <buffer> pclose
endif

"------------------------------------------------------------"

" Remove trailing whitespaces on save for specific file types
autocmd FileType c,cpp,python,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e

" Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

autocmd FileType python setlocal completeopt-=preview

" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

" ctrl-p settings
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|bower_components|build|dist|__pycache__)$',
  \ 'file': '\v\.(celerybeat-schedule|jpeg|png)$'
  \ }


" Region expand settings
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Clipboard copy settings
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>

" Python settings
" Debugger snippet
function! IPDB()
  r~/.vim/snippets/python/ipdb.txt
endfunction

nmap <C-B> :call IPDB()<CR>

let g:syntastic_python_checkers = ['flake8']


" React/JSX settings
" ESLINT settings
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '../node_modules/eslint/bin/eslint.js'

" Ruby settings
let g:syntastic_ruby_checkers = ['rubocop']


execute pathogen#infect()

" Vundle "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='deus'
let g:airline_section_b = ''
let g:airline_section_y = ''
let g:airline_section_y = ''
let g:airline_section_z = ''
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 0

map ,bn :bnext
map ,bp :bprevious

" Prettier
let g:prettier#autoformat = 0
let g:prettier#config#trailing_comma = 'none'
let g:prettier#exec_cmd_async = 1
let g:prettier#config#single_quote = 'true'
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#bracket_spacing = 'false' 
let g:prettier#config#jsx_bracket_same_line = 'true' 
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync


" CtrlP Funky settings
nnoremap <C-f> :CtrlPFunky<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

" Copy to clipboard options
set clipboard=unnamed
let g:system_copy#copy_command='xclip -sel clipboard'

" Highlight current line
let g:conoline_use_colorscheme_default_normal=1

" For vim-devicons
set encoding=utf8

" vim-javascript
let g:javascript_conceal_function             = "λ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "💩"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

set conceallevel=0

" Multiple cursors
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<c-D>'

" Ctrlsf
fun! s:get_visual_selection()
     let l=getline("'<")
     let [line1,col1] = getpos("'<")[1:2]
     let [line2,col2] = getpos("'>")[1:2]
     return l[col1 - 1: col2 - 1]
endfun
nnoremap <C-F> :CtrlSF 
vnoremap <C-F> <Esc>:CtrlSF <C-R><C-R>=<SID>get_visual_selection()<CR>

set nolinebreak

" navigate when have line breaks
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Python syntax
let python_highlight_all = 1

" React snippets
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"


" React
map ,css :e <C-R>=expand("%:p:h") . "/styles.css" <CR>
map ,js :e <C-R>=expand("%:p:h") . "/index.js" <CR>

" JS goto definition
function! JSGOTODEF()
  normal gdvey$3hgfggnzz
endfunction

autocmd FileType javascript nmap <leader>d :call JSGOTODEF()<CR>

" Move line up and down mappings
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'leshill/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'indenthtml.vim'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'szw/vim-tags'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/csapprox'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'prettier/vim-prettier'
Plugin 'christoomey/vim-system-copy'
Plugin 'miyakogi/conoline.vim'
Plugin 'dracula/vim'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'ryanoasis/vim-devicons'
Plugin 'dyng/ctrlsf.vim'
Plugin 'hdima/python-syntax'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'epilande/vim-react-snippets'
Plugin 'hotoo/jsgf.vim'
Plugin 'hail2u/vim-css3-syntax'
