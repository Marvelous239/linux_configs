" General
set number relativenumber
set mouse=v
if !has('nvim')
    set ttymouse=xterm2
endif
set autoindent expandtab tabstop=4 shiftwidth=4
set foldcolumn=1
set incsearch hlsearch
set ignorecase
set smartcase
set showtabline=2

set wildmode=longest,full
set wildmenu
set splitright
set splitbelow

" File settings
filetype plugin indent on
syntax on

" Theme
if has('nvim')
    set notermguicolors
    colorscheme catppuccin
else
    colorscheme peachpuff
endif
hi Search ctermfg=black
hi Visual ctermbg=black
hi Folded ctermbg=238 ctermfg=252
hi Foldcolumn ctermbg=238 ctermfg=252
hi SpellBad cterm=bold ctermbg=black ctermfg=red

" Macros

" Keybinds
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
au InsertLeave /* :set nopaste

let mapleader=","
nmap ce :tabe ~/.vimrc<CR>
nmap cr :so ~/.vimrc<CR>
nmap cn :Te ~/.config/nvim<CR>
nmap css :execute 'vs '.expand('%:r').'.css'<CR>
nmap cse :execute 'edit '.expand('%:r').'.css'<CR>

" Neovim
if has('nvim')
    " If you prefer the Omni-Completion tip window to close when a selection is
    " made, these lines close it on movement in insert mode or when leaving
    " insert mode
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
endif

" ctags and cscope
"set tags=./tags;,tags;
"if has("cscope")
"    set csprg=/usr/local/bin/cscope
"    set csto=0
"    set cst
"    set nocsverb
"    " add any database in current directory
"    if filereadable("cscope.out")
"        cs add cscope.out
"    " else add database pointed to by environment
"    elseif $CSCOPE_DB != ""
"        cs add $CSCOPE_DB
"    endif
"    set csverb
"endif
"
"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>
"
"" Using 'CTRL-spacebar' then a search type makes the vim window
"" split horizontally, with search result displayed in
"" the new window.
"
"nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>a :scs find a <C-R>=expand("<cword>")<CR><CR>
"
"set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
"map <c-n> :cn<CR>
"map <c-p> :cp<CR>
