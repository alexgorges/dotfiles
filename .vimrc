call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
call plug#end()

set mouse=
set clipboard=unnamedplus
set cursorline

inoremap { {}<left>

" highlight on yank
let g:highlightedyank_highlight_duration = 100

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

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

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
hi LineNr        ctermfg=243 guifg=#7a8478

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

" Tree-sitter/LSP and punctuation groups for brackets/parens/punctuation
hi! link @punctuation              Normal
hi! link @punctuation.bracket      Normal
hi! link @punctuation.delimiter    Normal
hi! link @punctuation.special      Normal
hi! link @variable                 Normal
hi! link @function                 Normal
hi! link @type                     Normal
hi! link @property                 Normal
hi! link @constant                 Normal
hi! link @number                   Normal
hi! link @boolean                  Normal
hi! link @operator                 Normal

" Re-link redundant/legacy groups just in case, preserving keywords/strings
hi! link Function    Normal
hi! link Type        Normal
hi! link Identifier  Normal
hi! link Number      Normal
hi! link Constant    Normal

" Optional: relink other detected highlight groups if more white appears
" hi! link SomeOtherGroup Normal

set guicursor=
