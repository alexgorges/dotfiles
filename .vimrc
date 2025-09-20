call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

set mouse=
set clipboard=unnamedplus
set cursorline

inoremap { {}<left>

" keep cursor position
" taken from :help restore-cursor
augroup RestoreCursor
  autocmd!
  autocmd BufReadPost *
    \ let line = line("'\"")
    \ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
    \      && index(['xxd', 'gitrebase'], &filetype) == -1
    \ |   execute "normal! g`\""
    \ | endif
augroup END

set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set showmatch
set matchtime=1
set nobackup
set incsearch
set nohlsearch
set nowrap
set noswapfile
set ignorecase
set smartcase
set splitright

syntax on

filetype off
filetype plugin indent on

nnoremap <silent> <space>p :Files<CR>
nnoremap <silent> <space>g :Rg<CR>
nnoremap <silent> <space>e :History<CR>
nnoremap <silent> <space>t :vsp<CR>
nnoremap <silent> <space>o :Ex<CR>

set backspace=indent,eol,start
set encoding=utf-8
set nobackup
set nowritebackup

set hlsearch
set termguicolors
set background=dark

" Base and UI
hi Normal        ctermfg=180 ctermbg=232 guifg=#d0c4a0 guibg=#0c0c0c
hi Comment       ctermfg=245 cterm=italic guifg=#868d80 gui=italic
hi CursorLine    cterm=NONE gui=NONE ctermbg=Blue guibg=#0e047a

hi Visual        ctermbg=238 guibg=#333333
hi Search        ctermbg=228 guibg=#f4d798
hi Directory     ctermfg=39  guifg=#00afff

" Syntax
" Only highlight keywords (orange) and string literals (sage green)
hi Keyword       ctermfg=172 guifg=#d87c00
hi Statement     ctermfg=172 guifg=#d87c00
hi Conditional   ctermfg=172 guifg=#d87c00
hi Repeat        ctermfg=172 guifg=#d87c00
hi Label         ctermfg=172 guifg=#d87c00
hi String        ctermfg=108 guifg=#98a869

" Force everything else to beige (including parens and punctuation)
hi Function      ctermfg=180 guifg=#d0c4a0
hi Type          ctermfg=180 guifg=#d0c4a0
hi Identifier    ctermfg=180 guifg=#d0c4a0
hi Number        ctermfg=180 guifg=#d0c4a0
hi Constant      ctermfg=180 guifg=#d0c4a0
hi Boolean       ctermfg=180 guifg=#d0c4a0
hi Character     ctermfg=180 guifg=#d0c4a0
hi Float         ctermfg=180 guifg=#d0c4a0
hi Operator      ctermfg=180 guifg=#d0c4a0
hi PreProc       ctermfg=180 guifg=#d0c4a0
hi Special       ctermfg=180 guifg=#d0c4a0
hi Underlined    ctermfg=180 guifg=#d0c4a0
hi Error         ctermfg=180 guifg=#d0c4a0
hi Todo          ctermfg=180 guifg=#d0c4a0
hi Delimiter     ctermfg=180 guifg=#d0c4a0

set guicursor=
