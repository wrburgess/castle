# Oracle
export ORACLE_HOME=/Library/Oracle/instantclient
export TNS_ADMIN=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export NLS_LANG=AMERICAN_AMERICA.UTF8
export PATH=$ORACLE_HOME:$PATH

# Editors
export SVN_EDITOR="mate -w"
export GIT_EDITOR="mate -w"

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
