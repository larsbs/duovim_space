" Vim color file
"
" This file is part of the vimscode colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/vimscode


" CSS Highlighting "{{{
" ================
" Common
Hi cssProp                  s:accent_teal       s:ignore
"hi cssAttr
hi link cssTagName          Statement
"hi cssIdentifier
"hi cssDefinition
Hi cssClassName             s:soft_green        s:ignore
hi link cssPseudoClass      cssClassName
hi link cssPseudoClassId    cssClassName
hi link cssNoise            Normal
" Hail2u Plugin
"hi cssUIAttr
"hi cssBoxProp
" }}}
