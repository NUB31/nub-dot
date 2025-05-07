#!/bin/bash

PS1='[\u@\h \W]\$ '

source "$HOME/.bashrc-path"
source "$HOME/.bashrc-alias"

# Use bash completion if installed
if [[ "$PS1" && -f /usr/share/bash-completion/bash_completion ]]; then
	source /usr/share/bash-completion/bash_completion
fi

# Init starship
if command -v starship > /dev/null; then
	eval "$(starship init bash)"
fi
