" Vim color file
"
" This file is part of the vimscode colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/vimscode


" JavaScript Highlighting "{{{
" =======================
Hi jsGlobalObjects              s:duo_3             s:ignore
hi link jsThis                  jsGlobalObjects
hi link jsAssignExpIdent        jsGlobalObjects
hi link jsExceptions            jsGlobalObjects

hi link jsVariableDef           SpecialChar

hi link jsModuleKeyword         jsVariableDef
hi link jsParen                 jsVariableDef
hi link jsObjectKey             jsVariableDef
hi link jsDestructuringBlock    jsVariableDef
hi link jsParenIfElse           jsVariableDef

hi link jsSpecial               Statement

hi link jsFuncArgRest           jsSpecial
hi link jsDocTags               jsSpecial
hi link jsStatic                jsSpecial
hi link jsSuper                 jsSpecial
hi link jsPrototype             jsSpecial
hi link jsArgsObj               jsSpecial
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
" }}}
