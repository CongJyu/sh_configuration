# 加载提示符
autoload -U promptinit

# 提示符颜色
autoload -U colors && colors
PROMPT="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[cyan]%}%1~ %{$reset_color%}%# "
RPROMPT="[%{$fg[magenta]%}%*%{$reset_color%}]"

# 文件目录颜色
export CLICOLOR="Yes"
export LSCOLORS="ExGxFxdaCxDaDahbadacec"

# 命令补全
autoload -U compinit

# 实用插件
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/Cellar/zsh-autosuggestions/0.7.0/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# 路径
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.1.0/bin:$PATH"

# Jetbrains IDEs
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
