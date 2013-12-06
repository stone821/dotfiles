if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
	\ 'build' : {
       \	'unix' : 'make -f make_unix.mak',
       \	},
       \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'altercation/vim-colors-solarized' " precision colorscheme for the vim text editor
NeoBundle 'bling/vim-airline' " lean & mean status/tabline for vim that's light as air
filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

" Vim general
set t_Co=16
syntax on
set background=dark
colorscheme solarized

set cursorline
set colorcolumn=80
call togglebg#map("<F5>")
set wildmenu
set number
set laststatus=2

let g:airline_powerline_fonts = 1
