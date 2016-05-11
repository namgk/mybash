#!/bin/sh
export PS1="\u@\W$ "
export PS1="\[\e[1;33m\]$PS1\[\e[m\]"

alias sshkeygen='ssh-keygen -t rsa -b 4096 -C "kyng@ece.ubc.ca"'
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'
alias curljsonpost='curl -H "Content-Type: application/json" -X POST -d'
alias curljsonput='curl -H "Content-Type: application/json" -X PUT -d'
alias taskman='ps aux --sort rss'
