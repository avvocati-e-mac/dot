# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# --- PLUGIN ZSH ----
#
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "marlonrichert/zsh-autocomplete" 
zplug "jeffreytse/zsh-vi-mode"
zplug "coltondick/zsh-dircolors-nord", as:theme
zplug "junegunn/fzf"
zplug "zsh-users/zsh-completions"

# Installa plugin se ci sono plugin che non sono stati installati
if ! zplug check --verbose; then
    printf "Installa? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Carica i plugin e li aggiunge i comandi in $PATH
zplug load --verbose

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
