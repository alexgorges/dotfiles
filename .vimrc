call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'doums/darcula'
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ervandew/ag'
Plug 'dyng/ctrlsf.vim'
call plug#end()

colorscheme gruvbox
set background=dark
set t_Co=256
set termguicolors
set number
set cursorline
set mouse=a
set incsearch
set ts=4 sw=4
set clipboard+=unnamed
set signcolumn=yes
syntax on
inoremap <nowait> jj <ESC>
nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <C-e> :BuffergatorToggle<CR>

" open in context
" :NERDTreeFind

" fzf
nnoremap <silent> <C-p> :Files<CR>

" coc settings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" maintain cursor pos when switching files
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'


