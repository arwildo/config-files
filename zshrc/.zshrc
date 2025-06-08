# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/liberica-jdk-15-full.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:${PATH//:$JAVA_HOME\/bin/}"
alias java="$JAVA_HOME/bin/java"

# Alias
alias py='python3'
alias docom='docker-compose'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gst='git status'

# Enable Vim keybindings
bindkey -v
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
bindkey '^R' history-incremental-search-backward

# GNU ls via coreutils
alias ls='gls --color=auto'
export LS_COLORS="di=36:fi=37:ln=35:ex=32"

# Grep color
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
