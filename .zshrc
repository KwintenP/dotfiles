# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kwintenp/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git yarn docker ng npm osx sudo yarn-autocompletions alias-tips zsh-syntax-highlighting npx)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# os x shortcuts
alias ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
alias cl="clear"
alias cpwd="pwd | pbcopy"

# directories
alias dev="cd ~/dev/"
alias github="cd ~/dev/github"
alias gitlab="cd ~/dev/gitlab"
alias kwintenp="cd ~/dev/github/kwintenp"
alias tvh="cd ~/dev/projects/tvh"
alias strongbrew="~/dev/github/strongbrewio"
alias play="~/dev/play"

# config 
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# shortcuts development
alias ys="yarn start"
alias ws="webstorm ."
alias yys="yarn && yarn start"

# git shortcuts
alias g="git"
alias ga="git add ."
alias gs="git status"
alias gp="git push origin"
alias gcount="git rev-list --left-right --count master..."
alias grh="git reset --hard"
alias rmb="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"
function gcbp() {
    git checkout -b $1
    git push -u origin $1
}
function gca() {
	git add .
	git commit --amend
}
function grhd() {
	git reset --hard
	git clean -df
}

# angular cli shortcuts
alias ngcomp="ng g c -it -is"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# kube shortcuts
alias k="kubectl"
alias kgp="k get pods"

# nginx shortcuts
alias ngx="sudo nginx"
alias ngxr="sudo nginx -s reload"

# terminal shortcuts
alias same="open . -a iterm"

# jenv config
eval "$(jenv init -)"

# added by travis gem
[ -f /Users/kwintenp/.travis/travis.sh ] && source /Users/kwintenp/.travis/travis.sh

# key bindings
bindkey "^[f" forward-word
bindkey "^[b" backward-word

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

