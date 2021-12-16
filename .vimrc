" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    Plug 'jiangmiao/auto-pairs'
    Plug 'luochen1990/rainbow'

    let g:rainbow_active=0
  let g:ycm_autoclose_preview_window_after_insertion=0
  let g:ycm_autoclose_preview_window_after_completion=1

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug  'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='deus'
" Initialize plugin system
call plug#end()
set number relativenumber
syntax enable
set background=dark
colorscheme solarized8_flat

noremap <Up> :echo "USE !!  k"<CR>
noremap <Down> :echo "USE !! j"<CR>
noremap <Left> :echo "USE !! h"<CR>
noremap <Right> :echo "USE !! l"<CR>
set splitbelow
set splitright
highlight LineNrAbove ctermfg=darkred
highlight LineNrBelow ctermfg=128
"highlight LineNr ctermfg=1
set cursorline 
highlight CursorLineNr gui=bold ctermfg=220
set hlsearch
highlight Search ctermfg=210 
imap jj <Esc>
