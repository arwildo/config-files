syn keyword pythonStatement self
syn keyword Boolean True
syn keyword Boolean False
syntax match pythonFunctionCall /\v[[:alpha:][a-zA-Z0-9_]+\ze(\s?\()/
hi def link pythonFunctionCall Function
