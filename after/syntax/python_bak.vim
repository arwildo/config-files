syn keyword pythonStatement self
syn keyword Boolean True
syn keyword Boolean False
syntax match pythonFunction /\v[[:alpha:]_.]+\ze(\s?\()/
hi def link pythonFunction Function

syntax match PythonArg /(.*\,\s*\zs\w\+\ze\s*=.*)/
hi PythonArg guifg=blue guibg=blue
