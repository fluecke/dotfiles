# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Init rbenv so everything that follows uses rbenv ruby
command -v rbenv &>/dev/null && eval "$(rbenv init - --no-rehash zsh)"

if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  PROMPT='%~ %# '
  RPROMPT=''
  return
fi

export DEFAULT_USER=$USER
export ZSH_THEME=sorin

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(macos zsh-completions swiftpm xcode zsh-syntax-highlighting git-auto-fetch)

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'
alias vim=nvim

# Dotfiles management
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Git aliases
alias cdgr='cd $(git rev-parse --show-toplevel)'
alias g="git"

function tmux() {
	if [[ $# == 0 ]]; then
		command tmux new -A -s "$TERM_PROGRAM"
	else
		command tmux "$@"
	fi
}

function zipedit(){
    echo "Usage: zipedit archive.zip file.txt"
	local tmpdir=$(mktemp -d)
    unzip "$1" "$2" -d $tmpdir
    nvim /$tmpdir/$2 && zip -j --update "$1"  "/$tmpdir/$2"
    rm /$tmpdir/$2
}

alias zsh_config="vim ~/.zshrc"


# completion
source <(fzf --zsh)

compdef _gnu_generic xcodebuild
compdef _gnu_generic openssl
