# Make directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# pretty visual git history
alias git-pretty="git log --graph --oneline --all --decorate"

# restart window
alias wtf="source ~/.zshrc"

# open these directories from anywhere
alias Dev="~/Desktop/Dev"

# install all the things
alias start-project="bundle install && bower install && npm install"

# instant web server
alias serve-me="python -m SimpleHTTPServer 8000"

# let terminal speak for me with 's'
alias s="say -v 'vicki'"

# Kills all processes running on the specified port (e.g. 'killport 8080')
killport() {
  lsof -i tcp:$1 | awk '(NR!=1) && ($1!="Google") && ($1!="firefox") {print $2}' | xargs kill
}

# Open a Github pull request locally
# usage: pr-me <ID> <branch-name>

function pr-me() {
  if [ $# -eq 0 ]; then
      print "please enter the PR id and branch name to create it on. i.e. pr-me 54 branch-name"
    else
      git fetch origin pull/$1/head:$2;
      git checkout $2
  fi
}

## Shruggie
alias shruggie="printf \"¯\_(ツ)_/¯\" | pbcopy && echo \"¯\_(ツ)_/¯ copied to clipboard\""

# Removes all branches that have already been merged to master (or dev)
alias clean-branches='git branch --merged | egrep -v "(^\*        |master|dev)" | xargs git branch -d'

# Removes node modules and reinstalls with yarn
alias clean_start="rm -rf node_modules && yarn install && yarn start"

# Quick Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Gets IP
alias myip="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

#Away from keyboard :smoking:
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
