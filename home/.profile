# Editors
export EDITOR="mate -w"
export SVN_EDITOR="mate -w"
export GIT_EDITOR="mate -w"
export BUNDLER_EDITOR="mate -w"

# Aliases
alias grep='grep --color=auto'
alias dev='cd ~/Development'
alias obaz='dev && cd obaz'
alias soc='dev && cd socialeer'
alias be='bundle exec'
alias rst='touch tmp/restart.txt && echo "Restarted."'
alias tlog='tail -f log/development.log'
alias cuke='be rake cucumber'
alias rspc='be rake spec'
alias memz='top -o vsize'
alias cpu='top -o cpu'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then source `brew --prefix`/etc/bash_completion.d/git-completion.bash; fi
PS1='[\@] \u@\h:\w$(__git_ps1 " \e[1;37m(%s)\e[0;0m") \$ '

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
