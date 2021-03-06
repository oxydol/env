# Created by newuser for 4.3.2
export LANG=ja_JP.UTF-8
export PATH=:$PATH:/Users/koshiro/Documents/zazen-pad:/Users/koshiro/Documents/giox-doliland/dev:/Users/koshiro/Documents/giox-dragoncollection/dev:/Users/koshiro/Documents/zazen-pad/bin/guerrilla:/Users/koshiro/Documents/dopr/www-bin
export EDITOR=vim
alias ls='ls -Gv'
alias ll='ls -l'
alias la='ls -al'
alias df='df -k'
# autoload
autoload -U compinit
compinit -u
# prompt
PROMPT="[${USER}] %(!.#.$) "
PROMPT2="%_%% "
RPROMPT="[%~]"
SPROMPT="%r is correct? [n,y,a,e]: "
# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS HIST_REDUCE_BLANKS INC_APPEND_HISTORY SHARE_HISTORY
# keybind
bindkey -e
# history C-p C-n
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
# auto cd
setopt auto_cd
# auto push
setopt auto_pushd
# list pack
setopt list_packed
# japanese
setopt print_eight_bit
# no beep
setopt no_beep
## terminal configuration
unset LSCOLORS
case "${TERM}" in
rxvt*|kterm*|xterm*|screen*)
  precmd() {
    echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
  }
  export LSCOLORS=gxfxcxdxbxegedabagacad
  export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
  zstyle ':completion:*' list-colors \
    'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
  ;;
esac

#zstyle ':completion:*' list-colors ${(s.:.)LSCOLORS}
# slash
setopt noautoremoveslash
# 大文字小文字
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# zed
autoload zed
# alias -s
alias -s txt=cat
alias -s log=cat
# alias -g
alias -g L='| lv -c'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g W='| wc'
alias -g S='| sed'
alias -g A='| awk'
# python brew
#source /Users/koshiro/.pythonbrew/etc/bashrc
#

eval "$(rbenv init -)"
source $HOME/.pythonbrew/etc/bashrc
