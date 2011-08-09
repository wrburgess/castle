# Editors
export SVN_EDITOR="mate -w"
export GIT_EDITOR="mate -w"
export BUNDLER_EDITOR="mate -w"

# Aliases
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias gcm='git checkout master'
alias gcw='git checkout working'
alias gitup='git svn rebase'
alias gitci='git svn dcommit'

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# PS1
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then source `brew --prefix`/etc/bash_completion.d/git-completion.bash; fi
export PS1="\[\033[01;34m\]\$(~/.rvm/bin/rvm-prompt) \[\033[00m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[00m\]\$ "
