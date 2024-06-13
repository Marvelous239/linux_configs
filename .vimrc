" General
set number relativenumber
set mouse=v
set autoindent expandtab tabstop=4 shiftwidth=4
if !has('nvim')
    set ttymouse=xterm2
endif
set wildmode=longest,full
set wildmenu
set foldcolumn=1
set incsearch hlsearch
set ignorecase
set smartcase
au InsertLeave /* :set nopaste

" File settings
filetype plugin indent on
syntax on

" Theme
if has('nvim')
    colorscheme retrobox
else
    colorscheme peachpuff
endif
hi Foldcolumn ctermbg=238 ctermfg=252
hi Folded ctermbg=238 ctermfg=252
hi Search ctermfg=black
hi Visual ctermbg=black

" Keybinds
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

if has('nvim')
    " If you prefer the Omni-Completion tip window to close when a selection is
    " made, these lines close it on movement in insert mode or when leaving
    " insert mode
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
endif
