function work_log {
  if [ -n "$1" ] && [ -n "$2" ]; then
    echo "Both arguments are here"
    git log --graph --abbrev-commit --pretty --decorate --all --author "$1" --since "$2" --date default
  else
    echo "You need to put the name|email as the first argument"
    echo "&& the date (MM/DD/YYYY) as the second argument"
  fi
}
