" Vim color file
"
" This file is part of the vimscode colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/vimscode


" JavaScript Highlighting "{{{
" =======================
Hi jsAssignExpIdent             s:dark_orange       s:ignore

Hi jsGlobalObjects              s:soft_orange       s:ignore
Hi jsThis                       s:soft_red          s:ignore

hi link jsModuleKeyword         SpecialChar
hi link jsVariableDef           SpecialChar
hi link jsParen                 SpecialChar

hi link jsSpecial               Statement

hi link jsFuncArgRest           jsSpecial
hi link jsDocTags               jsSpecial
hi link jsStatic                jsSpecial
hi link jsSuper                 jsSpecial
hi link jsPrototype             jsSpecial
hi link jsArgsObj               jsSpecial
"hi link jsTemplateVar           jsSpecial
hi link jsFutureKeys            jsSpecial
hi link jsBuiltins              jsSpecial
hi link jsDecorator             jsSpecial
hi link jsHtmlEvents            jsSpecial

hi link jsNull                  Constant
hi link jsUndefined             Constant

hi link jsFunctionKey           Function
hi link jsFuncCall              Function
hi link jsFuncAssignExpr        Function
hi link jsFuncAssignIdent       Function

hi link jsExceptions            jsGlobalObjects
" }}}
