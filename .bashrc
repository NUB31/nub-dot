# define aliases
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias k="kubectl"
alias ll="ls -la --color=auto"
alias pat="cat ~/.bak/PAT | clip"
alias gut="cleanbranches"
alias config="nano ~/.bashrc"
alias fucking="sudo"
alias pat="cat ~/.bak/PAT"

# define functions
cleanbranches(){
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}' ) ; do git branch -D $branch ; done
}

# init starship
export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init bash)"

# use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export DOTNET_ROOT="$HOME/.dotnet"

export PATH="$HOME/.dotnet:$HOME/.local/bin:$HOME/.cargo/bin/:$HOME/.dotnet/tools:$HOME/.dotnet:$PATH"
. "$HOME/.cargo/env"
