" Normal Mode
let s:N1 = [ '#E9E9E9', '#181B28', 22, 148 ]
let s:N2 = [ '#9E9E9E', '#303030', 247, 236 ]
let s:N3 = [ '#E9E9E9', '#121212', 231, 233 ]

" Inactive Mode
let s:IA = [ '#666666', s:N3[1], 242, s:N3[3] ]

" Warning Mode
let s:WI = [ '#1C1C1C', '#FFAF5F', 234, 215 ]

" Error Mode
let s:ER = [ s:WI[0], '#D75F5F', s:WI[2], 167 ]

" Terminal Mode
let s:TE = [ s:WI[0], s:N1[1], s:N1[2], s:N1[3] ]

" Reverse Mode
let s:NR = [ s:N2[1], s:N2[0], s:N2[3], s:N2[2], 'bold' ]

let g:airline#themes#minimalist#palette = {}

" Generate
let g:airline#themes#minimalist#palette.normal   = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#minimalist#palette.insert   = g:airline#themes#minimalist#palette.normal
let g:airline#themes#minimalist#palette.visual   = g:airline#themes#minimalist#palette.normal
let g:airline#themes#minimalist#palette.replace  = g:airline#themes#minimalist#palette.normal
let g:airline#themes#minimalist#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#minimalist#palette.normal.airline_warning  = s:WI
let g:airline#themes#minimalist#palette.normal.airline_error    = s:ER
let g:airline#themes#minimalist#palette.normal.airline_term     = s:TE

" Accents
let g:airline#themes#minimalist#palette.accents = { 'red': [ s:ER[1], '', s:ER[3], '' ] }

" CtrlP
if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#minimalist#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:N3, s:N2, s:NR)
endif
