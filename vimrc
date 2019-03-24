" Octave Syntax highlighting
set number
set expandtab
set tabstop=2
set hlsearch
set incsearch
syntax on
let g:tex_flavor='latex'
" Octave syntax
augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END
" Use keywords from Octave syntax language file for autocomplete
if has("autocmd") && exists("+omnifunc")
   autocmd Filetype octave
   \	if &omnifunc == "" |
   \	setlocal omnifunc=syntaxcomplete#Complete |
   \	endif
endif
" F5 executes the octave script you are editing
"autocmd FileType octave map <buffer> <f5> ggOpkg load all<esc>Gopause<esc>:w<cr>:!octave -qf %<cr>ddggdd:w<cr>

set background=dark
colors peaksea
hi Normal guibg=NONE ctermbg=NONE 
hi EndOfBuffer guibg=NONE ctermbg=NONE

"Plugins
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree'
" Initialize plugin system
Plug 'calincru/peaksea.vim'
Plug 'mikea1729/octave.vim'
call plug#end()


