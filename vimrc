" leader
let mapleader=','

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Bundle 'ntpeters/vim-better-whitespace'

call vundle#end()

" general
set backspace=indent,eol,start
set ruler
set number
set showcmd
set mouse=a
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set laststatus=2

" tab completionn
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

" colors
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" short commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" mappings
inoremap <S-Tab> <C-D>
inoremap jj <Esc>

" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>t :NERDTree<CR>
nnoremap <Leader>w :StripWhitespace<CR>

inoremap <Tab> <c-r>=Tab_Or_Complete()<CR>


" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Move Backup Files to ~/.vim/sessions
set backupdir=~/.vim/sessions
set dir=~/.vim/sessions

" show airline buffer, change theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'