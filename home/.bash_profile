# Editors
export EDITOR="subl -n"
export BUNDLER_EDITOR="subl -n"

# Aliases
alias q="exit"
alias tree="tree --dirsfirst -lFC"
alias grep="grep --color=auto"
alias s="cd ~/Sites"
alias be="bundle exec"
alias rst="touch tmp/restart.txt && echo "Restarted.""
alias tlog="tail -f log/development.log"
alias cuke="be rake cucumber"
alias rspc="be rake spec"
alias memz="top -o vsize"
alias cpu="top -o cpu"
alias fml="be foreman start -f Procfile.local"
alias fmld="be foreman start -f Procfile.development"
alias rb="dev && cd ruby"
alias js="dev && cd javascript"
alias esplug="open /Users/csprehe/Sites/elasticsearch-head/index.html"

# Git Aliases
alias gs='git status'
alias st='git status'
alias ga='git add --all'
alias gc='git commit'
alias gl='git gl'
alias gd='git diff'
alias gdc='git diff --cached'
alias gp='git push'
alias gr='git pull --rebase'
alias gv='git remote -v'

# Rails aliases
alias rs='be rails s'

alias pgn_data='cd /Users/csprehe/Dropbox/DevMyndTeam/Clients/640Labs/SamplePGNData'
alias tb='cd /Users/csprehe/Sites/devmynd/tractor_beam'
alias otb='cd /Users/csprehe/Sites/devmynd/ontheblock'
alias ese='cd /Users/csprehe/Sites/elasticsearch-example'
alias tabs='cd /Users/csprehe/Sites/devmynd/tabs'
alias batty='cd /Users/csprehe/Sites/devmynd/batty'

# Aliases for services
alias redis_start="redis-server /usr/local/etc/redis.conf"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias rem="redis-cli MONITOR"
alias mongo="mongod"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi

# Bash Prompt
if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

# Git Completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Git Prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

[ -z "$PS1" ] || PS1="${GREEN}\h${LGRAY}:${LBLUE}\W${RED}\$(__git_ps1 '(%s)') ${GREEN}\u${NORM}\$ "

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTCONTROL=ignoredups

# Node.js
# Should probably install node first!
#export NODE_PATH="/usr/local/lib/node"
#export PATH="/usr/local/share/npm/bin:$PATH"

# Ruby Tuning
export RUBY_GC_MALLOC_LIMIT=60000000

# Ruby 2.1.0
export RUBY_GC_HEAP_FREE_SLOTS=200000
export RUBY_GC_HEAP_INIT_SLOTS=40000

# Ruby < 2.1.0
#export RUBY_HEAP_MIN_SLOTS=40000
#export RUBY_FREE_MIN=200000

export CFLAGS="-march=core2 -O3 -pipe -fomit-frame-pointer"

# Java HOME
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH

# Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/bin:$PATH
