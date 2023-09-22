# init scripts
[ -e /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
[ -n "$(command -v zoxide)" ] && eval "$(zoxide init --cmd j zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f "$(brew --prefix asdf)/libexec/asdf.sh" ] && source "$(brew --prefix asdf)/libexec/asdf.sh"

# aliases
[ -n "$(command -v bat)" ] && alias cat='bat --plain --pager=never --color=always'
[ -n "$(command -v eza)" ] && alias ls='eza --icons --color=always'
alias ll='ls -l'
alias lla='ls -la'
alias ..='cd ..'
alias ...='cd ../../'

alias fd='fd --color=always'
alias rg='rg -p'

alias dip='docker image prune -af'
alias dcp='docker container prune -f'
alias dcc='docker ps -aq | xargs docker rm -f'
alias dvp='docker volume prune -f'
alias dnp='docker network prune -f'
alias dsp='docker system prune -af'

alias re='exec -l zsh'

alias -g L='| less -R'
# strip colors
alias -g P='| sed "s/\x1b\[[0-9;]*m//g"'

# add PATHS
export HISTSIZE=16384
export SAVEHIST=16384

if [ -d "$(brew --prefix)/share/zsh/site-functions" ]; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:$FPATH"
    export FPATH
fi

if [ -n "$(command -v fd)" -a -n "$(command -v fzf)" ]; then
    FZF_CTRL_T_COMMAND='fd --type d --follow .'
    export FZF_CTRL_T_COMMAND
fi

# autoload
autoload -Uz compinit && compinit
autoload -Uz colors && colors

# options
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt NO_BEEP

# vcs_info
autoload -Uz vcs_info && vcs_info
setopt PROMPT_SUBST

zstyle ':vcs_info:*' formats ' %F{green}(%b - %s)%f'
zstyle ':vcs_info:*' actionformats ' %F{green}(%b|%a - %s)%f'

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' formats ' %F{green}(%b)%f' '%c%u'
zstyle ':vcs_info:git:*' actionformats ' %F{green}(%b)%f - %F{magenta}[%a]%f'

zstyle ':vcs_info:git+set-message:*' hooks git-untracked
function +vi-git-untracked() {
    if [ "$1" != "1" ]; then
        return 0
    fi

    if [ -z "$(git status --porcelain | awk '{print $1}' | grep -F '??' 2> /dev/null)" ]; then
        return 0
    fi

    hook_com[unstaged]+='?'
}

precmd() {
    vcs_info
    PROMPT='%F{yellow}%n%f in %F{red}%~%f${vcs_info_msg_0_}'
    if [ -n "${vcs_info_msg_1_}" ]; then
        PROMPT+=' - %F{magenta}[${vcs_info_msg_1_}]%f'
    fi
    PROMPT+='
> '
}

export PROMPT

[ -f "$HOME/.zshrc.user" ] && source "$HOME/.zshrc.user"
