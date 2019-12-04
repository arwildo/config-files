function global:prompt {

    $regex = [regex]::Escape($HOME) + "(\\.*)*$"

    "PS $($executionContext.SessionState.Path.CurrentLocation.Path -replace $regex, '~$1')$('>' * ($nestedPromptLevel + 1)) ";

}

$myapp = "C:\My App\"
Set-Location (Split-Path myapp)
