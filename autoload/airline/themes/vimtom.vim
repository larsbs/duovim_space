" Normal mode
let s:N1 = [ '#bebeef' , '#5b5b7b' , 15 , 55  ]
let s:N2 = [ '#bebeef' , '#49495a' , 15 , 98  ]
let s:N3 = [ '#bebeef' , '#14161A' , 15 , 233 ]

" Insert mode
let s:I1 = [ '#2b2b36' , '#fe7734' , 15 , 33  ]
let s:I2 = [ '#bebeef' , '#49495a' , 15 , 39  ]
let s:I3 = [ '#bebeef' , '#14161A' , 15 , 233 ]

" Visual mode
let s:V1 = [ '#2b2b36' , '#98c379' , 233 , 202 ]
let s:V2 = [ '#bebeef' , '#49495a' , 233 , 214 ]
let s:V3 = [ '#bebeef' , '#14161A' , 15  , 233 ]

" Replace mode
let s:R1 = [ '#2b2b36' , '#cc525b' , 15 , 196 ]
let s:R2 = [ '#bebeef' , '#49495a' , 15 , 203 ]
let s:R3 = [ '#bebeef' , '#14161A' , 15 , 233 ]

let g:airline#themes#vimtom#palette = {}
let g:airline#themes#vimtom#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#vimtom#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#vimtom#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#vimtom#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IN1 = [ '#5b5b7b' , '#3a3a4b' , 247 , 241 ]
let s:IN2 = [ '#bebeef' , '#14161A' , 15  , 233 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#vimtom#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 =  [ '#bebeef' , '#5b5b7b' , 15 , 55 ]
let s:CP2 =  [ '#bebeef' , '#49495a' , 15 , 98 ]
let s:CP3 =  [ '#5b5b7b' , '#bebeef' , 55 , 15 ]

let g:airline#themes#vimtom#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#vimtom#palette.tabline = {
      \ 'airline_tab':     [ '#bebeef' , '#2f363f' ,  15 , 55  , '' ],
      \ 'airline_tabsel':  [ '#bebeef' , '#5b5b7b' ,  15 , 98  , '' ],
      \ 'airline_tabtype': [ '#bebeef' , '#49495a' ,  15 , 98  , '' ],
      \ 'airline_tabfill': [ '#bebeef' , '#14161A' ,  15 , 233 , '' ],
      \ 'airline_tabmod':  [ '#2b2b36' , '#cc525b' ,  15 , 33  , '' ]
      \ }
