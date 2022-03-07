syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

:set nu

" set the runtime path to include Vundle and initialize
" bunle is in ~/.vim/bundle
set rtp+=$VIMRUNTIME/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Shougo/vimproc.vim'
call vundle#end()            " required

let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vim82/.ycm_cpp_extra_config.py'

filetype plugin indent on    " required


set ruler
set encoding=utf-8
set hlsearch

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set softtabstop=2
set smartindent

" For clang formatter.
:command FormatFile :ClangFormat
let g:clang_format#code_style = "google"
let g:clang_format#style_options.IndentWidth = 2

autocmd FileType vim let b:vcm_tab_complete = 'vim'

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

let g:Tlist_WinWidth=50

" Fix it!
nmap <silent> <F3> :YcmCompleter FixIt<CR>

nmap <C-S-T> :TlistToggle<CR>
nnoremap <Space>n :NERDTree<CR>
nnoremap <Space>h :noh<CR>
nnoremap <S-L> :vertical res+10<CR>
nnoremap <S-H> :vertical res-10<CR>
nnoremap <S-K> :res+5<CR>
nnoremap <S-I> :res-5<CR>
nnoremap <Leader>tm :TableModeToggle<CR>
nnoremap <Leader>tt :Tableize<CR>

" Set indent to 2 for py files
" autocmd Filetype python set tabstop=8| set shiftwidth=2| set expandtab

function! Ter()
  :botright vsp
  :ter
  :wincmd w
  :q
endfunction

command! Ter call Ter()

