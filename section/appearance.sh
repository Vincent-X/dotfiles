#!/usr/bin/env bash

# Colours
GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
RESET="\[\033[0m\]"
RED="\[\033[0;31;m\]"

# Grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

# ls colours
export LSCOLORS='Gxfxcxdxdxegedabagacad'

# Prompt config
function exitstatus {
	EXIT="$?"
	PROMPT="\u:\W$GREEN$(__git_ps1)$RESET \$ "

	if [ $EXIT -eq 0 ]
	then
		PS1=":) $PROMPT"
	else
		PS1="$RED:($RESET $PROMPT"
	fi
}
PROMPT_COMMAND=exitstatus
