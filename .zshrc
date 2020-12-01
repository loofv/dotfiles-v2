# Constants
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.custom_scripts:$PATH"
export ZSH="/home/loveh/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
ZSH_THEME="loveh-theme"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Make command line branch load faster
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Read my aliases file
. ~/.aliases
# Run my login scripts
. ~/.custom_scripts/startup

# Command history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Vim mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Automatically add fzf key bindings to .zshrc
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
# zsh-syntax-highlighting must be at the bottom
source /home/loveh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
