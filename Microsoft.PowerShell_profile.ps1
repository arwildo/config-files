function global:prompt {
    $regex = [regex]::Escape($HOME) + "(\\.*)*$"
    $ESC = [char]27
    "$ESC[92mPS$ESC[0m$ESC[94m $($executionContext.SessionState.Path.CurrentLocation.Path -replace $regex, '~$1')$ESC[0m$('>' * ($nestedPromptLevel + 1)) "
}
