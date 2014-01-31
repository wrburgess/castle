# Editors
# export EDITOR="subl -n"
# export BUNDLER_EDITOR="subl -n"

# dirs
alias root='cd ~/'
alias desktop='cd ~/Desktop'
alias downloads="cd ~/Downloads"
alias docs="cd ~/Documents"
alias dropbox='cd ~/Dropbox'
alias sandbox='cd ~/dev/sandbox/'
alias wrburgess='cd ~/dev/wrburgess/wrburgess.github.com'

# projects
alias devd='cd /Users/wrburgess/dev/'
alias devm='cd /Users/wrburgess/dev/dm'
alias offbooks='cd ~/dev/jbrb/offbook-server'
alias offbookc='cd ~/dev/jbrb/offbook-client'
alias wpa='cd ~/dev/dm/wpa_film_library'
alias hb='cd ~/dev/dm/hubot'
alias bstack='cd ~/Documents/BrowserStack'
alias bstackrun='java -jar BrowserStackTunnel.jar vdqEkZwe34et8tmpH17o localhost,3000,0'
alias gcapi='cd ~/dev/dm/grandcentral_api'
alias gcmob='cd ~/dev/dm/grandcentral_mobile'
alias gcweb='cd ~/dev/dm/grandcentral_web'
alias batty='cd ~/dev/dm/batty'
alias ehack='cd ~/dev/sandbox/ember-hack'
alias tick='cd ~/dev/jbrb/ticker-server'

# aliases
alias q="exit"
# alias tree="tree --dirsfirst -lFC"
# alias grep="grep --color=auto"
# alias s="cd ~/Sites"
alias be="bundle exec"
alias rst="touch tmp/restart.txt && echo "Restarted.""
alias tlog="tail -f log/development.log"
# alias cuke="be rake cucumber"
alias rspc="be rake spec"
alias memz="top -o vsize"
alias cpu="top -o cpu"
alias fml="be foreman start -f Procfile.local"
alias fmld="be foreman start -f Procfile.development"
alias rb="dev && cd ruby"
alias js="dev && cd javascript"
alias esplug="open /Users/csprehe/Sites/elasticsearch-head/index.html"
alias castle="cd /Users/csprehe/Sites/castle"
alias soit="source ~/.bash_profile"

# git
alias gstat='git status'
alias gstash='git stash'
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpbm="git push backup master"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gphm="git push heroku master"
alias gcm="git commit -m"
alias gad="git add . -A"
alias op="git pull --rebase origin master"
alias glog="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gd="git diff"
alias gdc="git diff --cached"
alias gs="git status"
alias gp="git push origin HEAD"

# nav
alias ~="cd ~"
alias home="cd ~"
alias ..="cd ../"
alias ...="cd ../.."
alias ....="cd ../../.."
alias lst="ls -alh"
alias dt='cd ~/Desktop'
alias dl="cd ~/Downloads"
alias db='cd ~/Dropbox'

# Rails aliases
alias rs='be rails s'
alias rc="rails console"
alias seed="rake db:seed"

# Local directories
alias pgn_data='cd /Users/csprehe/Dropbox/DevMyndTeam/Clients/640Labs/SamplePGNData'
alias tb='cd /Users/csprehe/Sites/devmynd/tractor_beam'
alias otb='cd /Users/csprehe/Sites/devmynd/ontheblock'
alias ese='cd /Users/csprehe/Sites/elasticsearch-example'
alias tabs='cd /Users/csprehe/Sites/devmynd/tabs'
alias batty='cd /Users/csprehe/Sites/devmynd/batty'
alias gcw='cd /Users/csprehe/Sites/devmynd/grandcentral_web'
alias gca='cd /Users/csprehe/Sites/devmynd/grandcentral_api'
alias me='cd /Users/csprehe/Sites/csprehe'

# misc
alias redis_start="redis-server /usr/local/etc/redis.conf"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias rem="redis-cli MONITOR"
alias mongo="mongod"
alias reindex="bundle exec rake sunspot:solr:reindex" #for solr/sunspot
alias elastic="elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml" #for elasticsearch
alias python="python3"
alias srv="ruby -run -e httpd . -p 12345"
alias lime='open -a "Sublime Text 2"'

# Sublime snippets
source ~/snippets.sh

# Bash script
source ~/git_log.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}

function pr {
  local dir="$PWD"

  until [[ -z "$dir" ]]; do
    if [ -d ./.git ]; then
      break
    else
      cd ..
    fi
    dir="${dir%/*}"
  done
}

export PS1='\u\[\e[1;37m\]@\[\e[1;31m\]\W\[\e[1;33m\]$(parse_git_branch)\[\e[0;39m\]> '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
export EDITOR=sublime
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export HISTFILESIZE=10000
export HISTSIZE=10000
shopt -s histappend
export PROMPT_COMMAND='history -a'