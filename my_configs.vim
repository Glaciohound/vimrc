" File              : my_configs.vim
" Author            : Chi Han
" Email             : haanchi@gmail.com
" Date              : 27.07.2019
" Last Modified Date: 27.07.2019
" Last Modified By  : Chi Han
"
" Welcome to this little kennel of Glaciohound!


" Bundle/Vundle plugin settings

set nocompatible              " be improved, required
filetype off                  " required

set rtp+=~/.vim_runtime/my_plugins/Vundle.vim
call vundle#begin('~/.vim_runtime/my_plugins')
" those commented out plugins are overwrited

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'LucHermitte/ln-vim-lib'
Plugin 'LucHermitte/local_vimrc'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'easymotion/vim-easymotion'
Plugin 'nvie/vim-flake8'
" Plugin 'alpertuna/vim-header'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'tpope/vim-rails'
Plugin 'mhinz/vim-startify'
Plugin 'eshion/vim-sync'

call vundle#end()

syntax on
filetype plugin indent on


" basic settings for typing and visualization

set confirm
set gfn=Monaco:h12
set lines=999 columns=999
set number
set foldmethod=indent
set nofoldenable
set expandtab
set completeopt-=preview
set formatoptions=tqcro

let g:NERDTreeWinSize = 30
let g:NERDTreeShowHidden = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" auto-saving and synchronizing

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']

let g:autosave_extensions = '.backup'
let g:autosave_backup     = '~/.vim/backup'
let g:autosave_timer      = 5*1000
autocmd BufWritePost * :call SyncUploadFile()
autocmd FileType python set textwidth=79


" auto-header and auto-commenting

let g:author = 'Glaciohound'
let g:header_field_author = ['Chi Han']
let g:header_field_author_email = ['haanchi@gmail.com']
let g:header_comment = [
            \'Welcome to this little kennel of Glaciohound!'
            \]
let g:header_break_after = 2
" lower-case shortcuts are for putting things before cursor
" while the upper-case are for putting things after cursor
nnoremap 't "=strftime('%c')<CR>P
nnoremap 'n "=g:author<CR>P
nnoremap 'T "=strftime('%c')<CR>p
nnoremap 'N "=g:author<CR>p


" easymotion

map <Leader><Leader>/ <Plug>(easymotion-sn)
map <Leader><Leader>/ <Plug>(easymotion-sn)
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_smartcase = 1
