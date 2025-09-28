# Display
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/liberica-jdk-21-full.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# Javascript
export PATH="$HOME/.yarn/bin:$PATH"

# All
export PATH="$HOME/.local/bin:$PATH"

# Alias
alias py='python3'
alias docom='docker-compose'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias yt='yt-dlp -f "248"'
alias yto='yt-dlp -f "137"'
alias ytv='yt-dlp -f "270"'
alias ytc='yt-dlp -F'
alias ytd='yt-dlp -f'

# Alias Folders
win="/Users/arwildo/Code/VM/Windows"
code="/Users/arwildo/Code"
docker="/Users/arwildo/Code/docker"
creator="/Users/arwildo/Creator"
download="/Users/arwildo/Downloads"

# Alias Files
info="/Users/arwildo/Documents/Info/teks.md"
helper="/Users/arwildo/Documents/Info/helper.md"


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
alias lm='ollama run qwen2.5-coder:7b "Answer just the command and explain it as shorts as posibble, 30 char max about this question :'
#alias lm='ollama run phi3 "Answer just the command and explain it as shorts as posibble, 30 char max about this question :'

# Convert Gif to Mov
convertgif() {
  input="$1"
  base=$(basename "$input" .gif)
  output="output_${base}.mov"
  ffmpeg -i "$input" -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2,format=rgba" -c:v prores_ks -pix_fmt yuva444p10le "$output"
  echo "Saved as $output"
}
