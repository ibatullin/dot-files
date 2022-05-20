# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="ibatullin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
# Productivity
  colorize urltools web-search extract thefuck

# Docker
  docker-compose

# jumping
  pj autojump z

# Build tools
  git git-extras gitignore git-flow

# Ruby
  bundler gem rails rake ruby rvm

# zsh
  alias-finder
)

source $ZSH/oh-my-zsh.sh

EDITOR=(vim)

# pj plugin
PROJECT_PATHS=(~/workspace)

# Paths
path+=('/usr/lib/lightdm/lightdm' '/usr/local/sbin' '/usr/local/bin'
       '/usr/sbin' '/usr/bin' '/sbin' '/bin' '/usr/games')
path+=("$HOME/.rvm/bin")        # Add RVM to PATH for scripting
path+=('/usr/local/go/bin')

path+=("$HOME/dev/Qt/5.12.2/clang_64/bin")
path+=("$HOME/dev/Qt/Tools/QtInstallerFramework/3.0/bin")

path+=("$HOME/.local/bin")
path+=('/usr/local/bin') # Homebrew
path+=("$HOME/bin" $path)


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH

# Aliases
alias v='vim'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias dash='f() { open dash://$1; }; f'
alias flow='git flow'
alias git='LANG=en_US git'

gerrit() {
  CMD="$1"
  BRANCH="$2"
  if [ "x$CMD" = "x" ] || [ "x$BRANCH" = "x" ]; then
    echo "Usage: $0 review|draft BRANCH" >&2
    return 1
  fi

  if [ "$CMD" = "review" ]; then
    git push origin HEAD:refs/for/$BRANCH
  elif [ "$CMD" = "draft" ]; then
    git push origin HEAD:refs/drafts/$BRANCH
  fi
}

# Load iTerm2 shell integration
source ~/.dot-tools/iterm2_shell_integration.zsh
eval "$(pyenv init -)"

# Use vim cli mode
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# History search by up/down arrows
bindkey '\eOA' history-beginning-search-backward
bindkey '\e[A' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '\e[B' history-beginning-search-forward
