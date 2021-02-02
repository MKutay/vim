language en_US.UTF-8
set nu
set rnu
syntax on 
syntax enable
set noerrorbells
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set nowrap
set bg=dark
set hls
set mouse=a
set incsearch
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set smartindent
set smartcase
set cb=unnamed
let g:mapleader=','
autocmd FileType cpp nnoremap <F12> :!g++ -std=c++17 -fsanitize=undefined -fsanitize=address -D_GLIBCXX_DEBUG -DLOCAL -O2 % -o %:r && echo "Compile Finished" && ./%:r<CR>
autocmd FileType python nnoremap <F12> :!python3 %<CR>
autocmd FileType kotlin nnoremap <F12> :!kotlinc % -include-runtime -d %:r.jar && echo "Compile Finished" && java -jar %:r.jar<CR>
autocmd FileType sh nnoremap <F12> :!./%<CR>
autocmd FileType cpp nnoremap <F10> :rightb vert term g++ -std=c++17 % -o %:r<CR>
autocmd FileType cpp nnoremap <F9> :rightb vert term ./%:r<CR>

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

call plug#begin('~/.vim/plugged')

Plug 'tiqwab/vim-plugin-template'
Plug 'social-snippet/vim-social-snippet'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-bufferline'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clangd-completer --go-completer --rust-completer --ts-completer' }
Plug 'rdnetto/ycm-generator', { 'branch': 'stable' }
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vifm/vifm.vim'

call plug#end()

" Trigger configuration. You need to change this to something else than <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set laststatus=2

let g:ycm_global_ycm_extra_conf = '~/dotfiles/vim/.config/nvim/ycm_global_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_enable_diagnostic_signs=0

map <leader>nt :NERDTree<CR>

let g:shades_of_purple_airline = 1
let g:airline_theme = 'shades_of_purple'
