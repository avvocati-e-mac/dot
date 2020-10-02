# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# include this in .profile or another
# shell startup file
printURIComponent() {
  awk 'BEGIN {while (y++ < 125) z[sprintf("%c", y)] = y
  while (y = substr(ARGV[1], ++j, 1))
  q = y ~ /[[:alnum:]_.!~*\47()-]/ ? q y : q sprintf("%%%02X", z[y])
  printf("%s", q)}' "$1"
}

# sharesheet should be called with
# filenames as arguments that will open
# in system sharesheet. Alternatively you
# can pipe in text and call it without 
# arguments
sharesheet() {
  printf "\e]6;sharesheet://?pwd="
  printURIComponent "$PWD"
  printf "&home="
  printURIComponent "$HOME"
  for var in "$@"
  do
    printf "&path="
    printURIComponent "$var"
  done
  if [ $# -eq 0 ]
  then
    text=$(cat -)
    printf "&text="
    printURIComponent "$text"
  fi
  printf "\a"
}

# send the current directory using OSC 7
# when showing prompt to make filename
# detection work better
if [ -z "$INSIDE_EMACS" ]; then
  update_terminal_cwd() {
    printf '\e]7;%s' "file://$HOSTNAME"
    printURIComponent "$PWD"
    printf "\a"
  }
  PROMPT_COMMAND="update_terminal_cwd${PROMPT_COMMAND:+; $PROMPT_COMMAND}"
fi



# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx mosh marked2 vi-mode fzf history tmux z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=it_IT.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
 else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias zshrc="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias aem="cd '/Users/filippostrozzi/Nextcloud/Avvocati e Mac/00 - A&M in prep NC'"
alias aem-video="cd '/Users/filippostrozzi/Library/Mobile Documents/com~apple~CloudDocs/Avvocati e Mac/in preparazione/06 - video' "

source ~/.alias-rete

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#  Funzioni per FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Scorciatoia a tastiera per muoversi nelle cartelle con FZF
# su tastiera italiana (al contrario di quella americana per cui sarebbe  "ç") è ©

bindkey "©" fzf-cd-widget
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
