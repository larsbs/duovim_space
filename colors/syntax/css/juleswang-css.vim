" Vim color file
"
" This file is part of the duovim_space colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/duovim_space


" CSS Highlighting "{{{
" ================
" Common
hi link cssProp             Normal

hi link cssTagName          htmlTagName

Hi cssClassName             s:duo_3         s:ignore
hi link cssPseudoClass      cssClassName
hi link cssPseudoClassId    cssClassName

hi link cssNoise            Noise

" JulesWang plugin
hi link cssBraces           Noise
" }}}
