" Vim color file
" Maintainer:   Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/duovim_space


" CONFIGURATION "{{{
" =============
set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name="duovim_space"
" }}}

" UTILS "{{{
" =============
function! RemoveNewlines(string)
    return substitute(a:string, '\n', '', 'g')
endfunction

" Custom Hi command that accepts colors as variables.
" Usage -> Hi [group] [guifg_color] [guibg_colors]
command! -nargs=+ Hi call CustomHighlighter(<f-args>)
function! CustomHighlighter(name, ...)
    let colour_order = ['guifg', 'guibg']
    let command = 'hi! ' . a:name
    if (len(a:000) < 1) || (len(a:000) > (len(colour_order)))
        echoerr "No colour or too many colours specified"
    else
        for i in range(0, len(a:000) - 1)
            " Extract the color from the variable. If we don't do
            " this, then, the variable is parsed as a string and
            " we get a color asignation error.
            redir => s:color
            silent exe 'echo '.a:000[i]
            redir END
            let s:color = RemoveNewlines(s:color)
            if s:color != 'ignore'
                let command .= ' ' . colour_order[i] . '=' . s:color
            endif
        endfor
        exe command
    endif
endfunc
" }}}

" COLORS "{{{
" =======
" uno_hue = 240
" duo_hue = 20

let s:none              = 'NONE'
let s:ignore            = 'ignore'
let s:testing           = '#CDFF00'

let s:black             = '#000000'

let s:uno_1             = '#bebeef'  " pmenu fg, function names fg, html tag names fg,
let s:uno_2             = '#8686cb'
let s:uno_3             = '#7272a1'  " Special constants fg, html args fg, module keyword fg, vars def fg,
let s:uno_4             = '#5b5b7b'  " Line numbers fg, split bg, folds bg, non text fg, comments fg,
let s:uno_5             = '#49495a'  " Special chars fg,

let s:duo_1             = '#fe7734'  " Strings and constants fg, Todo fg
let s:duo_2             = '#b06845'  " Title fg, identifiers fg, statements fg, operators fg,
let s:duo_3             = '#644c40'  " js this fg, js global objects fg,

let s:syntax_fg               = '#8686cb'  " uno_2
let s:syntax_bg               = '#24242f'  "
let s:syntax_accent           = '#ff8441'  " cursor bg,
let s:syntax_guide            = '#3a3a4b'  " pmenu bg,
let s:syntax_selection        = '#3f3f51'  " Search bg, visual selection bg,
let s:syntax_selection_gutter = '#2b2b37'  " pmenu selection bg,
let s:syntax_cursor_line      = '#2b2b36'  "
let s:syntax_cursor           = '#955b44'  " cursor bg,

let s:ui_primary        = '#9e9eb3'  " Nerdtree titles, mode msg fg, question fg,
let s:ui_secondary      = '#6a6a79'

let s:light_blue        = '#dcdcaa'  " Functions
let s:soft_red          = '#e06c75'  " Errors
let s:dark_soft_red     = '#cc525b'  " Not used? *
let s:soft_green        = '#ce9178'  " Strings
let s:soft_orange       = '#e5c06f'  " Global objects
" }}}

" GENERAL "{{{
" =======
Hi Normal               s:syntax_fg          s:syntax_bg
"Hi ColorColumn          s:testing            s:testing
Hi Cursor               s:none               s:syntax_accent
"hi CursorIM
Hi CursorColumn         s:ignore             s:syntax_cursor_line
Hi CursorLine           s:ignore             s:syntax_cursor_line
Hi Directory            s:ui_primary         s:ignore
Hi DiffAdd              s:soft_green         s:syntax_bg
hi DiffAdd              gui=bold
Hi DiffChange           s:soft_orange        s:syntax_bg
hi DiffChange           gui=bold
Hi DiffDelete           s:soft_red           s:syntax_bg
Hi DiffText             s:light_blue         s:syntax_bg
Hi ErrorMsg             s:syntax_fg          s:dark_soft_red
hi ErrorMsg             gui=none
Hi VertSplit            s:syntax_bg          s:uno_4
Hi Folded               s:syntax_bg          s:uno_4
Hi FoldedColumn         s:syntax_bg          s:uno_4
Hi SignColumn           s:uno_4              s:ignore
Hi IncSearch            s:none               s:syntax_selection
Hi Search               s:none               s:syntax_selection
Hi LineNr               s:uno_4              s:ignore
Hi MatchParen           s:none               s:none
hi MatchParen           gui=underline
Hi ModeMsg              s:ui_primary         s:none
"Hi MoreMsg              s:testing            s:testing
Hi NonText              s:uno_4              s:ignore
Hi Question             s:ui_primary         s:none
hi Question             gui=none
"Hi SpecialKey           s:testing            s:testing
"Hi StatusLine           s:testing            s:testing
"Hi StatusLineNC         s:testing            s:testing
Hi Title                s:duo_2              s:ignore
Hi Visual               s:none               s:syntax_selection
"Hi VisualNOS            s:testing            s:testing
Hi WarningMsg           s:dark_soft_red      s:ignore
Hi WildMenu             s:testing            s:testing
Hi Menu                 s:testing            s:testing
Hi Scrollbar            s:testing            s:testing
Hi Tooltip              s:testing            s:testing
Hi Pmenu                s:uno_1              s:syntax_guide
Hi PmenuSel             s:uno_1              s:syntax_selection_gutter
Hi PmenuSbar            s:ignore             s:uno_5
Hi PmenuThumb           s:ignore             s:uno_4
" }}}


" Syntax Highlighting Groups (see :he group-name)

" COMMENTS "{{{
" ========
" Any comment
Hi Comment              s:uno_4              s:ignore
hi Comment              gui=italic
" }}}

" CONSTANTS "{{{
" =========
" Any constant
Hi Constant             s:duo_1             s:ignore
" A string constant
Hi String               s:duo_1             s:ignore
" }}}

" IDENTIFIERS "{{{
" ===========
" Any variable name
Hi Identifier           s:duo_2              s:ignore
hi Identifier           gui=none
" Function name (also: methods for classes)
Hi Function             s:uno_1              s:ignore
" }}}

" STATEMENTS "{{{
" ==========
" Any statement
Hi Statement            s:duo_2              s:ignore
hi Statement            gui=none
" if, then, else, endif, switch, etc.
"hi Conditional
" for, do, while, etc.
"hi Repeat
" case, default, etc.
"hi Label
" sizeof, +, *, etc.
Hi Operator             s:duo_2              s:ignore
" Any other keyword
"hi Keyword
" Try, catch, throw
"hi Exception
" }}}

" PREPROCS "{{{
" ========
" Generic preprocessor
Hi PreProc              s:duo_2             s:ignore
" Preprocessor #include
"hi Include
" Preprocessor #define
"hi Define
" Same as define
"hi Macro
" Preprocessor #if, #else, #endif, etc.
"hi PreCondit
" }}}

" TYPES "{{{
" =====
" int, long, char, etc.
Hi Type                 s:duo_2            s:ignore
hi Type                 gui=none
" static, register, volatile, etc.
"hi StorageClass
" struct, union, enum, etc.
"hi Structure
" a typedef
"hi Typedef
" }}}

" SPECIALS "{{{
" ========
" Any special symbol (ex: [, ], (, ), etc.)
Hi Special              s:uno_5              s:ignore
" Extra characters like {, ,, ., etc"
Hi Noise                s:uno_5              s:ignore
" Special character in a constant (ex: \n, %s, etc.)
Hi SpecialChar          s:uno_3              s:ignore
" You can use CTRL-] on this
"hi Tag
" Character that needs attention
"hi Delimiter
" Special things inside a comment
"hi SpecialComment
" Debugging statements
"hi Debug
" }}}

" UNDERLINEDS "{{{
" ===========
" Text that stands out, HTML links
"hi Underlined
" }}}

" IGNORES "{{{
" =======
" Left blank, hidden hl-Ignore
"hi Ignore
" }}}

" ERRORS "{{{
" ======
" Any erroneous construct
"hi Error
" }}}

" TODOS "{{{
" =====
" Anything that needs extra attention; mostly the kewords
" TODO FIXME and XXX
Hi Todo                 s:duo_1         s:none
hi Todo                 gui=bold
" }}}


" JavaScript Highlighting "{{{
" =======================
"execute 'source ' . expand("<sfile>:p:h") . "/syntax/javascript/vim-javascript-syntax.vim"
execute 'source ' . expand("<sfile>:p:h") . "/syntax/javascript/pangloss-vim-javascript.vim"
" }}}
" HTML Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/html/html5.vim"
" }}}
" XML Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/xml/xml.vim"
" }}}
" Jinja Highlighting "{{{
" ==================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/jinja/vim-jinja2-syntax.vim"
" }}}
" CSS Highlighting "{{{
" ================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/css/juleswang-css.vim"
" }}}
" LESS Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/less/genoma-vim-less.vim"
" }}}
" SH Highlighting "{{{
" ===============
execute 'source ' . expand("<sfile>:p:h") . "/syntax/bash/bash.vim"
" }}}
" NERDTree Highlighting "{{{
" =====================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/nerdtree/nerdtree.vim"
" }}}
