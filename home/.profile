# MacPorts Installer addition on 2009-10-04_at_17:07:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Oracle
export ORACLE_HOME=/Library/Oracle/instantclient
export TNS_ADMIN=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export NLS_LANG=AMERICAN_AMERICA.UTF8

# SVN Editor
export SVN_EDITOR="mate -w"

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

# Ruby Enterprise Edition
export PATH=/opt/ruby-enterprise-1.8.7-2010.01/bin:$PATH

# MongoDB
export PATH=/usr/local/mongodb/bin:$PATH

# Aliases
alias arestart="sudo apachectl restart"
alias rclean="rm -rf log/* && rm -rf tmp/*"
alias rdebug="touch tmp/restart.txt && touch tmp/debug.txt"
alias rrestart="touch tmp/restart.txt && rm -rf tmp/debug.txt"
alias cfhome="cd ~/Sites/cuttlefish"
alias cfapi="cd ~/Sites/cuttlefish/api"
alias cfcms="cd ~/Sites/cuttlefish/cms"
alias cfsolr="cd ~/Sites/cuttlefish/solr"
alias listerine="cd ~/Sites/cuttlefish/listerine"
alias zoozag="cd ~/Sites/cuttlefish/zoozag"
alias cfsolrstart="cfapi && rake solr:start && rake daemons:start:search_indexer"
alias cfsolrstop="cfapi && rake solr:stop && rake daemons:stop"
alias cfupdate="cfapi && svn up && rrestart && cfcms && svn up && rrestart && cfsolr && svn up && listerine && svn up && rrestart && zoozag && svn up && rrestart"
alias cfstart="cfupdate && cfsolrstart && cfhome && mate . && clear && pwd"

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm