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
  colored-man colorize urltools web-search

# FS jumping
 pj

# Build tools
  git git-extras gitignore

# Ruby
  bundler gem rails rake ruby rvm thor

# Distro-related
  debian suse yum

# MacOS
  brew
)

source $ZSH/oh-my-zsh.sh

EDITOR=(vim)

# pj plugin
PROJECT_PATHS=(~/workspace)

# Paths
export PATH="$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
export PATH="$HOME/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Aliases
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'

gerrit() {
  CMD="$1"
  BRANCH="$2"
  if [ "x$CMD" = "x" ] || [ "x$BRANCH" = "x" ]; then
    echo "Usage: $0 push|draft BRANCH" >&2
    return 1
  fi

  if [ "$CMD" = "push" ]; then
    git push origin HEAD:refs/for/$BRANCH
  elif [ "$CMD" = "draft" ]; the
    git push origin HEAD:refs/drafts/$BRANCH
  fi
}
