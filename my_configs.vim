" File              : my_configs.vim
" Author            : Chi Han
" Email             : haanchi@gmail.com
" Date              : 16.07.2019
" Last Modified Date: 21.07.2019
" Last Modified By  : Chi Han
" 
" Welcome to this little kennel of Glaciohound!


set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim_runtime/my_plugins/Vundle.vim
call vundle#begin('~/.vim_runtime/my_plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

syntax on
filetype plugin indent on


set confirm
set gfn=Monaco:h12
set lines=999 columns=999
set number
set foldmethod=indent
set nofoldenable
set expandtab
set completeopt-=preview
set formatoptions+=cro

let g:NERDTreeWinSize = 30
let g:NERDTreeShowHidden = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']

let g:autosave_extensions = '.backup'
let g:autosave_backup     = '~/.vim/backup'
let g:autosave_timer      = 5*1000
autocmd BufWritePost * :call SyncUploadFile()

let g:header_field_author = ['Chi Han']
let g:header_field_author_email = ['haanchi@gmail.com']
let g:header_comment = [
            \'',
            \'Welcome to this little kennel of Glaciohound!'
            \]
