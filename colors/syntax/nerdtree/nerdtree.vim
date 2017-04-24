" Vim color file
"
" This file is part of the duovim_space colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/duovim_space


" NERDTree Highlighting "{{{
" =====================
" Highlighting for directory nodes and file nodes
hi link NERDTreeDir        Directory
hi link NERDTreeDirSlash   Directory

Hi NERDTreeFile            s:ui_secondary              s:ignore

Hi NERDTreeCWD             s:syntax_accent             s:ignore
hi link NERDTreeOpenable   NERDTreeCWD
hi link NERDTreeClosable   NERDTreeCWD

hi NERDTreeUp              guifg=#ff0000               gui=none ctermbg=none
" }}}
