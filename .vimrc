" General
set number relativenumber
set mouse=v
set autoindent expandtab tabstop=4 shiftwidth=4
set ttymouse=xterm2
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
colorscheme peachpuff
hi Foldcolumn ctermbg=238 ctermfg=252
hi Folded ctermbg=238 ctermfg=252
hi Search ctermfg=black
hi Visual ctermbg=black

" Keybinds
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
