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

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PS1
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then source `brew --prefix`/etc/bash_completion.d/git-completion.bash; fi
PS1='[\@] \u@\h:\w$(__git_ps1 " (%s)") \$ '
