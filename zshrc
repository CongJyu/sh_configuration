# 加载提示符
autoload -U promptinit

# 提示符颜色
autoload -U colors && colors
PROMPT="[%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[cyan]%}%1~%{$reset_color%}]%# "
# PROMPT="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[cyan]%}%1~ %{$reset_color%}%# "
# RPROMPT="[%{$fg[magenta]%}%*%{$reset_color%}]"

# 文件目录颜色
export CLICOLOR="Yes"
export LSCOLORS="ExGxFxdaCxDaDahbadacec"

# 命令补全
autoload -U compinit

# 实用插件
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/Cellar/zsh-autosuggestions/0.7.0/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Ruby Path
export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby@3.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby@3.1/include"

# JetBrains IDE
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
