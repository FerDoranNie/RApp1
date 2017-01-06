"comenzando la configuracion de vim
"sintax on
set nocompatible
"filetype off


"aqui va la configuracion de vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim'
""Temas

""Navegación
Plugin 'ctrlpvim/ctrlpvim'
Plugin 'scroloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-sintax-highlight'

""Para completar

Plugin 'Valloric/YouCompleteMe' ""demasiado valioso
Plugin 'scroloose/syntastic'
Plugin 'sheerun/vim-polyglot'


""Python
Plugin 'ehamberg/vim-cute-python'

call vundle#end()
filetype plugin indent on

"configuracion de ambiente
set encoding=utf-8
set fileformat=unix

"espacios configuracion 
set backspace=2

"configuracion de la pantalla
set number
set cursorline
set splitbelow splitright 
set ruler "opciones adicionales
set showcmd "opciones adicionales

""configuracion de temas
"set t_Co=256
set background=dark
colorscheme 256-jungle
"colorscheme blues
"colo 256-jungle


"configuracion de indentado
set expandtab autoindent
au BufNewFile,BufRead *.py,*.ts,.*R set tabstop=4 softtabstop=4 textwidth=80 shiftwidth=4
au BufNewFile,BufRead *.js,*.css,*.html set tabstop=2 softtabstop=2 textwidth=80 shiftwidth=2


""operaciones de guardar
set foldmethod=indent
set foldlevel=99
