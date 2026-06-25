bindkey -v

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.profile

# version control status prompt
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       ' %b%u%c'
zstyle ':vcs_info:git:*' actionformats ' %b|%a%u%c'

precmd() {
  vcs_info
}

setopt prompt_subst

autoload -U colors && colors

PROMPT="%B%{$fg[blue]%}%~%{$fg[magenta]%}"
PROMPT+='${vcs_info_msg_0_}'
PROMPT+=" %{$fg[green]%}λ%b "


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/moe/.lmstudio/bin"
# End of LM Studio CLI section

