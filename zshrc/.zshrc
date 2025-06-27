# Display
PROMPT='%F{green}%n@%mf:%F{blue}%~%f$ '


# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/liberica-jdk-21-full.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# Alias
alias py='python3'
alias docom='docker-compose'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gst='git status'
win="/Users/arwildo/Code/VM/Windows"

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

# LLM
alias lm='ollama run qwen2.5-coder:7b'

