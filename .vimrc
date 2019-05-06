" Credits for some stuff: http://amix.dk/vim/vimrc.html

" Font
set gfn=Monaco:h14
" set gfn=* -> pop up font window

" Show line numbers
set number

" Set colorscheme to desert
colorscheme desert

" Use spaces instead tabs
set expandtab
" 1 tab == 4 spaces
set shiftwidth=4    " Control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation
set tabstop=4       " Tell vim how many columns a tab counts for
" Show lost whitespaces
" set list
" How to show lost whitespaces?
set listchars=tab:>=,trail:~,extends:>,precedes:<,nbsp:.
" Do not show lost whitespaces
set nolist

" Highlight search results
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Map ctrl and movement keys to move easier between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Navigate easier through wrapped lines
nnoremap j gj
nnoremap k gk

" Increase history
set history=9999

" Always show the status line
set laststatus=2
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Fugitive (github.com/tpope)
execute pathogen#infect()
syntax on
filetype plugin indent on

" Set starting directory for ctrlp
let g:ctrlp_working_path_mode = 'ra'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove trailing whitespace
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
function! StripTrailingWhitespace()
    if !&binary && &filetype != 'diff'
        normal mz
        normal Hmy
        %s/\s\+$//e
        normal 'yz<cr>
        normal `z
        retab
    endif
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
