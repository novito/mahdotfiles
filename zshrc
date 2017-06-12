 # Path to your oh-my-zsh installation.
 export ZSH=$HOME/.oh-my-zsh

 # Set name of the theme to load.
 # Look in ~/.oh-my-zsh/themes/
 # Optionally, if you set this to "random", it'll load a random theme each
 # time that oh-my-zsh is loaded.
 ZSH_THEME="awesomepanda"

 # Uncomment the following line to use case-sensitive completion.
 # CASE_SENSITIVE="true"

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
 plugins=(git web-search bundler)

 source $ZSH/oh-my-zsh.sh

 # User local bin in front of everything ;)
 export PATH="/usr/local/bin:/Users/teespring10063/bin:$PATH"

 # export MANPATH="/usr/local/man:$MANPATH"

 # You may need to manually set your language environment
 # export LANG=en_US.UTF-8

 # Preferred editor for local and remote sessions
 # if [[ -n $SSH_CONNECTION ]]; then
 #   export EDITOR='vim'
 # else
 #   export EDITOR='mvim'
 # fi
 export EDITOR='vim'

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
 # Skip forward/back a word with opt-arrow

 # ALIAS
 alias rts='cd /Users/teespring10063/Code/rails-teespring'
 alias gh='cd ~'
 alias grd='git pull --rebase origin develop'
 alias gr='git pull --rebase origin $(current_branch)'
 alias gd='git branch -D'
 alias gdr='git branch -rd'
 alias gacm='git add . && git commit -m'
 alias yolo='git push -f origin'
 alias rake="noglob rake"
 alias railz="sh /Users/teespring10063/dotfiles/tmux_rails.sh"
 alias vim="/usr/local/bin/vim"
 alias ctags="/usr/local/bin/ctags"
 alias run_ctags="ctags -R --exclude=.git --exclude=node_modules"
 alias agr='ag -G ".*.rb"'

 #export TEESPRING_PATH="$HOME/Projects/Teespring"
 #export DOCKER_HOST=tcp://192.168.59.103:2376
 #export DOCKER_CERT_PATH="$HOME/.boot2docker/certs/boot2docker-vm"
 #export DOCKER_TLS_VERIFY=1
export HONEYBADGER_AUTH_TOKEN="9L81Aj4ypeXZSAdBZyqv"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export GOPATH="$HOME/Code/go"
export PATH="$GOPATH/bin:$PATH"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export PATH=/Users/teespring10063/Code/devops_utils:$PATH
source ~/dotfiles/tmuxinator.zsh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="/Users/teespring10063/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# myIP address
function myip() {
        ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
        ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
        ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
        ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
        ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}
