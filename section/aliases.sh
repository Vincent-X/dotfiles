#!/usr/bin/env bash -e

# Aliases for various tools

# ls
alias ls='ls -FG'
alias ll='ls -laoh'

# ps
alias psa="ps aux"
alias psg="ps aux | grep $1"

# tail
alias tf="tail -f"

# vim
alias vimdiff='vim -d'
alias vim='nvim'
alias vi='nvim'

# ssh
alias ssh="$DOTFILES_DIR/bin/colorssh"

# OSX quicklook
alias look="qlmanage -p"

# Bundle exec is annoying.
alias be="bundle exec"

# PHPUnit installed with composer
alias phpunit="vendor/bin/phpunit"

# Clear DNS caches.
alias dnsclear="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

# docker
alias docker-env='eval $(docker-machine env)'

# datamart
alias computron="psql -h freshbooks-data.c8exzn6geij3.us-east-1.redshift.amazonaws.com -p 5439 -d data_depot -U mark"
