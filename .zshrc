# Git Prompt
source ~/.git-prompt.sh
# Path to your oh-my-zsh installation.
export ZSH=/Users/john-doe/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( jtriley simple sorin fino agnoster jispwoso tjkirch macovsky ys wezm theunraveler funky cloud bureau agnoster wezm+ )

# Aliases
alias mp3dl="youtube-dl -x --audio-format mp3 -f bestaudio"
alias zshconfig="atom ~/.zshrc"
alias zshresource="source ~/.zshrc"
# for the fuck
eval "$(thefuck --alias)"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(git brew pip)

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export HOMEBREW_GITHUB_API_TOKEN=""
export PATH="/usr/local/sbin:$PATH"
export EDITOR=/usr/local/bin/atom
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[38;5;9m\]\u\[\033[38;5;15m\] @ \[\033[38;5;10m\]$(__git_ps1 "⎇ (%s) ")\[\033[38;5;14m\]\w\[\033[38;5;9m\]\n❤ \[$(tput sgr0)\]'
# vv found on stack overflow to fix coloring vv
export TERM=xterm-256color

# History
export HISTFILESIZE=20000
export HISTSIZE=10000
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
# eval "$(rbenv init -)"

# this might be actived from .oh-my-zsh file
# fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Create crashes with iterm
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/Users/john-doe/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:/usr/local/sbin

##ALIASES
alias brewod='brew outdated'
alias brewdoc='brew doctor'
alias brewcl='brew cleanup && brew cask cleanup'
alias brewup='brew update --verbose'
alias avd='android avd'
alias localip='ipconfig getifaddr en0'
alias resource_profile="source ~/.bash_profile"
alias bashconfig="atom ~/.bash_profile"
alias copypwd='echo -n $PWD|pbcopy' ##copies the pwd to clipboard
# Search history for term
alias his='history | grep $1'
alias gs='git status -sb'
alias gd='git diff --color'
alias gdc='git diff --cached'
alias gstat='git diff --stat'
alias log='git log --all --graph --decorate --oneline --abbrev-commit'
git config --global help.autocorrect 1


# find shorthand
function f() {
  find . -name "$1" 2>&1 | grep -v 'Permission denied'
}

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

##Functions
change_terminal_title()
{
  echo -n -e "\033]0;"$1"\007"
}

getip()
{
  if [ $# -eq 0 ]
  then
    echo -e "No arguments supplied,\n \t\te.g. \"getip en0\""
  else
    CM="ipconfig getifaddr "$1
    #echo $CM
    OUTPUT=$($CM)
    echo "$OUTPUT"
  fi
}

dl_youtube()
{
  CM='youtube-dl -u $1 -p $2 -o "%(autonumber)s - %(title)s.%(ext)s" '$3
  $($CM)
}


export NVM_DIR="/Users/$(whoami)/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
