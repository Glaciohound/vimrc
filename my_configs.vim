" Settings for Vundle

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
" - Plugin 'tell-k/vim-autopep8'
" a cool starting page
Plugin 'mhinz/vim-startify'
" automatically saving to disk
Plugin '907th/vim-auto-save'

" syntactic support for automatic check
" - Plugin 'Valloric/YouCompleteMe'

" legacy
" - Plugin 'vim-syntastic/syntastic'
" - Plugin 'tpope/vim-rails'
" - Plugin 'skywind3000/asyncrun.vim'

call vundle#end()
filetype plugin indent on
syntax on


" basic settings for typing and visualization

set confirm
set gfn=Monaco:h14
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
endif
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

" let g:autosave_extensions = '.backup'
" let g:autosave_backup     = '~/.vim/backup'
" let g:autosave_timer      = 5*1000
" autocmd BufWritePost * :call SyncUploadFile()
autocmd FileType python set textwidth=79

let g:auto_save = 1  " enable AutoSave on Vim startup


" auto-header and auto-commenting

let g:header_auto_add_header = 0
let g:author = 'Glaciohound'
let g:header_field_author = 'Chi Han'
let g:header_field_author_email = 'haanchi@gmail.com'
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
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_smartcase = 1


" Mapping to AutoPep8

autocmd FileType python noremap <D-P> :call Autopep8()<CR>
