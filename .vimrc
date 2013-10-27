" Credits for some stuff: http://amix.dk/vim/vimrc.html

" Set colorscheme to desert
colorscheme desert

" Use spaces instead tabs
set expandtab
" 1 tab == 4 spaces
set shiftwidth=4    " Control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation
set tabstop=4       " Tell vim how many columns a tab counts for

" Highlight search results
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Map ctrl and movement keys to move easier between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Always show the status line
set laststatus=2
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Fugitive (github.com/tpope)
execute pathogen#infect()
syntax on
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

