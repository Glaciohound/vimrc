" ---------------Settings before Plugins Installed-----

" indentLine
let g:indentLine_fileTypeExclude = ['json', 'markdown']


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
" python support
Plugin 'nvie/vim-flake8'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'tell-k/vim-autopep8'
" a cool starting page
Plugin 'mhinz/vim-startify'
" automatically saving to disk
Plugin '907th/vim-auto-save'
" automatic completion. you may switch it on to vundle-install
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on
syntax on


" ---------------Basic Settings------------------------

set confirm
set number
set expandtab
set gfn=Monaco:h14
set foldmethod=indent
set foldcolumn=0
set completeopt-=preview
set formatoptions=tqcro
set background=dark
set transparency=15
colorscheme evening
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
endif

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

autocmd FileType python set textwidth=79
autocmd FileType markdown set textwidth=0
autocmd FileType text set textwidth=0
" autocmd FileType python set colorcolumn=80
" 
" set cursorcolumn
" set cursorrow

nnoremap <silent> <leader><space> :nohl<CR>

" ---------------     Plugin Configurations ---------------

" NerdTree
let g:NERDTreeWinSize = 30
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 0

" GitGutter
let g:gitgutter_enabled=1

" auto-saving and synchronizing
let g:autosave_extensions = '.backup'
let g:autosave_backup     = '~/.vim/backup'
let g:autosave_timer      = 5*1000
autocmd BufWritePost * :call SyncUploadFile()
let g:auto_save = 0  " enable AutoSave on Vim startup

" easymotion
map <Leader><Leader>/ <Plug>(easymotion-sn)
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_smartcase = 1

" mapping for AutoPep8
autocmd FileType python noremap <D-P> :call Autopep8()<CR>

" todo searching
noremap <Leader>t :noautocmd vimgrep /TODO/j **/*.py<CR>:cw<CR>

" snipMate version
let g:snipMate = { 'snippet_version' : 1 }

" Copilot
let g:copilot_filetypes = {'markdown': v:true}
autocmd BufEnter *.tex set conceallevel=0
