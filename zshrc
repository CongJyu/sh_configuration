# Written by Rain CongJyu Chen

autoload -U promptinit

autoload -U colors && colors
PROMPT="[%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[cyan]%}%1~%{$reset_color%}]%# "
# PROMPT="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[cyan]%}%1~ %{$reset_color%}%# "
# RPROMPT="[%{$fg[magenta]%}%*%{$reset_color%}]"

export CLICOLOR="Yes"
export LSCOLORS="ExGxFxdaCxDaDahbadacec"

autoload -U compinit

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/Cellar/zsh-autosuggestions/0.7.0/share/zsh-autosuggestions/zsh-autosuggestions.zsh

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
