set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()

filetype plugin indent on

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set rnu
set term=screen-256color

syntax on

hi clear SignColumn

" ----- Plugin-Specific Settings --------------------------------------
"
"  " ----- altercation/vim-colors-solarized settings -----
"  " Toggle this to "light" for light colorscheme
set background=dark
"
"  " Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256
"
"  " Set the colorscheme
colorscheme solarized8
"
"
"  " ----- bling/vim-airline settings -----
"  " Always show statusbar
set laststatus=2
"
"  " Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"https://github.com/abertsch/Menlo-for-Powerline
"  " download all the .ttf files, double-click on them and click "Install"
"  " Finally, uncomment the next line
"let g:airline_powerline_fonts = 1
"
"  " Show PASTE if in paste mode
"let g:airline_detect_paste=1
"
"  " Show airline for tabs too
"let g:airline#extensions#tabline#enabled = 1
"
"  " Use the solarized theme for the Airline status bar
"let g:airline_theme='solarized
"

" ----- jistr/vim-nerdtree-tabs -----
"  " Open/close NERDTree Tabs with \t
map <silent> <leader>t :NERDTreeTabsToggle<CR>
"  " To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1


let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
	  au!
	    au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- xolox/vim-easytags settings -----
 " Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
"In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

let g:ycm_semantic_triggers =  {
  \   'c,cpp,objc': [ 're!\w{3}', '_' ],
  \ }
