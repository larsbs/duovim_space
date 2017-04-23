" Vim color file
"
" This file is part of the vimscode colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/vimscode


" JavaScript Highlighting "{{{
" =======================
" Statement Keywords
Hi javaScriptMessage                      s:accent_teal       s:ignore
hi link javaScriptNull                    Constant
hi link javaScriptEventListenerKeywords   javaScriptMessage
Hi javaScriptGlobalObjects                s:soft_orange       s:ignore
" Function and arguments highlighting
hi link javaScriptFuncKeyword             Identifier
hi link javaScriptFuncDef                 Function
hi link javaScriptFuncExp                 javaScriptFuncDef
hi link javaScriptFunctionKey             javaScriptFuncDef
" Braces, Parens, symbols, colons
hi link javaScriptBraces                  Normal
hi link javaScriptParens                  Normal
hi link javaScriptOpSymbols               Operator
hi link javaScriptEndColons               Normal
hi link javaScriptLogicSymbols            Operator
" }}}
