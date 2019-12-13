syn keyword pythonStatement self
syn keyword Boolean True
syn keyword Boolean False
syntax match pythonFunctionCall /\v[[:alpha:]_.]+\ze(\s?\()/
hi def link pythonFunctionCall Function
