set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'rdnetto/YCM-Generator'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'Asheq/close-buffers.vim'

" Google formatter.
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
call vundle#end()            " required

" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
" Glaive codefmt plugin[mappings]
" Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set number
set ruler
set nocompatible

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set softtabstop=2
set smartindent

set hlsearch

" YCM Configs
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_python_interpreter_path = '/Library/Frameworks/Python.framework/Versions/3.6/bin/python3.6'
let g:ycm_python_binary_path = '/Library/Frameworks/Python.framework/Versions/3.6/bin/python3.6'
let g:ycm_python_sys_path = ['/Library/Frameworks/Python.framework/Versions/3.6/bin/python3.6']
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]

" Adding automatons for when entering or leaving Vim
" au VimEnter * nested :call LoadSession()
" au VimLeave * :call MakeSession()
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

" Set indent to 2 for py files
" autocmd Filetype python set tabstop=8| set shiftwidth=2| set expandtab

function! Ter()
  :botright vsp 
  :ter
  :wincmd w
  :q  
endfunction

command! Ter call Ter()

