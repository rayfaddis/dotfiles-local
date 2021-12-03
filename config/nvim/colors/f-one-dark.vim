" Colorscheme generated by https://github.com/arcticlimer/djanho

" Theme setup
hi clear
highlight clear
syntax reset
let g:colors_name = "f-one-dark"

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color1 = '#AAB1C0'
let s:Color2 = '#D55FDE'
let s:Color4 = '#e5c07b'
let s:Color3 = '#EF596F'
let s:Color0 = '#2BBAC5'
let s:Color5 = '#D8985F'

call s:highlight('Operator', '', s:Color0, '')
call s:highlight('Operator', '', s:Color1, '')
call s:highlight('Keyword', '', s:Color2, '')
call s:highlight('Identifier', '', s:Color3, '')
call s:highlight('Type', '', s:Color4, '')
call s:highlight('Conditional', '', s:Color2, '')
call s:highlight('Repeat', '', s:Color2, '')
call s:highlight('Type', '', s:Color2, '')
call s:highlight('Number', '', s:Color5, '')
call s:highlight('Constant', '', s:Color5, '')

highlight! link TSString String
highlight! link Repeat Conditional
highlight! link TelescopeNormal Normal
highlight! link TSKeyword Keyword
highlight! link TSConstant Constant
highlight! link TSTag MyTag
highlight! link TSField Constant
highlight! link TSFloat Number
highlight! link TSOperator Operator
highlight! link TSRepeat Repeat
highlight! link Macro Function
highlight! link Operator Keyword
highlight! link TSConditional Conditional
highlight! link TSNamespace TSType
highlight! link TSParameterReference TSParameter
highlight! link TSProperty TSField
highlight! link TSTagDelimiter Type
highlight! link TSType Type
highlight! link Conditional Operator
highlight! link NonText Comment
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link Folded Comment
highlight! link TSNumber Number
highlight! link TSFuncMacro Macro
highlight! link TSFunction Function
highlight! link Whitespace Comment
highlight! link TSParameter Constant
highlight! link TSComment Comment
highlight! link CursorLineNr Identifier
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TSLabel Type
highlight! link TSPunctBracket MyTag
