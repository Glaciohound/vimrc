" File              : my_configs.vim
" Author            : Glaciohound <hanchier@gmail.com>
" Date              : 20.08.2020
" Last Modified Date: 20.08.2020
" Last Modified By  : Glaciohound <hanchier@gmail.com>


" ---------------Settings for Vundle-------------------

set nocompatible              " be improved, required
filetype off                  " required

set rtp+=~/.vim_runtime/my_plugins/Vundle.vim
call vundle#begin('~/.vim_runtime/my_plugins')
" those commented out plugins are overwrited

" including vundle by default
Plugin 'VundleVim/Vundle.vim' 
" showing vertical lines for indentation
Plugin 'Yggdroot/indentLine'
" enabling vimrc locally using a `_vimrc_local.vim`
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'
" automatically syncing to remote end
Plugin 'eshion/vim-sync'
" quick search&jumping within page
Plugin 'easymotion/vim-easymotion'
" moving smoothly
Plugin 'yuttie/comfortable-motion.vim'
" adding header automatically
Plugin 'Glaciohound/vim-header'
" python support
Plugin 'nvie/vim-flake8'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'tell-k/vim-autopep8'
" a cool starting page
Plugin 'mhinz/vim-startify'
" automatically saving to disk
Plugin '907th/vim-auto-save'
" automatic completion. you may switch it on to vundle-install
" Plugin 'Valloric/YouCompleteMe'

" legacy
" - Plugin 'vim-syntastic/syntastic'
" - Plugin 'tpope/vim-rails'
" - Plugin 'skywind3000/asyncrun.vim'

call vundle#end()
filetype plugin indent on
syntax on


" ---------------Basic Settings------------------------

set confirm
set number
set nofoldenable
set expandtab
set gfn=Monaco:h14
set foldmethod=indent
set completeopt-=preview
set formatoptions=tqcro
set background=dark
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
endif

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

autocmd FileType python set textwidth=79

" ---------------     Plugin Configurations ---------------

" NerdTree
let g:NERDTreeWinSize = 30
let g:NERDTreeShowHidden = 1

" Syntastic (totally replaced by YouCompleteMe)
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers=['flake8']

" auto-saving and synchronizing
let g:autosave_extensions = '.backup'
let g:autosave_backup     = '~/.vim/backup'
let g:autosave_timer      = 5*1000
autocmd BufWritePost * :call SyncUploadFile()
let g:auto_save = 0  " enable AutoSave on Vim startup

" auto-header
let g:header_auto_add_header = 0
" let g:author = 'Glaciohound'
let g:header_field_author = 'Glaciohound'
let g:header_field_author_email = 'hanchier@gmail.com'
let g:header_comment = []
let g:header_lines_after = 2

" auto-commenting
" lower-case shortcuts are for putting things before cursor
" while the upper-case are for putting things after cursor
" nnoremap 't "=strftime('%c')<CR>P
" nnoremap 'n "=g:author<CR>P
" nnoremap 'T "=strftime('%c')<CR>p
" nnoremap 'N "=g:author<CR>p

" easymotion
map <Leader><Leader>/ <Plug>(easymotion-sn)
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_smartcase = 1

" mapping for AutoPep8
autocmd FileType python noremap <D-P> :call Autopep8()<CR>
