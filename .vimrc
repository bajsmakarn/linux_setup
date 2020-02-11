
"endatiationnrules 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set noswapfile "no swp files are created
set nobackup "no backup is created

"sets a line at column 110
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

"makes vim assume files to be c
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

"allows vim to search files
let &path.="src/include,/usr/include/AL,"

"For syntastic                                                                                                
"let g:syntastic_c_checkers = [' ']                                                                           
"let g:syntastic_c_gcc_exec = "~/usr/bin/gcc"     

"vundle
filetype off
set nocompatible
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
""let g:syntastic_enable_signs=1
""let g:syntastic_check_on_wq = 0

"for solarized
syntax on
let g:solarized_termcolors = 256
set t_Co=16
let g:solarized_termtrans = 1
let g:solarized_bold = 1
let g:solarized_italic = 0
let g:solarized_underline = 0
let g:solarized_contrast = "high"
let g:solarized_visibility= "normal"
set background=dark
"color solarized
colorscheme solarized

