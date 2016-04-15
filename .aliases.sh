# tells me my IP Address
alias myip='curl ip.appspot.com'

# Make directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# pretty visual git history
alias git-pretty="git log --graph --oneline --all --decorate"

# open up emoji cheat sheet in browser
alias emojis="open http://www.emoji-cheat-sheet.com/"

# restart window
alias wtf="source ~/.zshrc"

# edit personal goals
alias pg-ed="subl3 ~/Desktop/Dev/personal-goals"

# check off personal goals (open main README.md in vim)
alias pg-ch="vim ~/Desktop/Dev/personal-goals/README.md"

# add a happy moment for the day
alias add-moment="vim ~/Desktop/Dev/personal-goals/happy-moments/happy-moments.md"

# add to content list (opens content list folder in vim)
# i.e. pg-add blog-post or pd-add resource
function pg-add() {
  if [ $# -eq 0 ]; then
      print "Oops. Please enter a content type! (i.e. pg-add video)"
    else
      vim ~/Desktop/Dev/personal-goals/content-list/"$1"s.md
  fi

}

# push my changes to my github master branch and open the page
alias pg-gh="cd ~/Desktop/Dev/personal-goals &&
  git add -A &&
  git commit -m 'push from terminal' &&
  git push origin master &&
  open http://github.com/una/personal-goals"

# open these directories from anywhere
alias Dev="~/Desktop/Dev"
alias Blogs="~/Documents/Blogs"

# create new week in review
function pg-review() {
  if [ $# -eq 0 ]; then
      print "Oops. Please enter a file name: month-week (i.e. 11-week2"
    else
      cd ~/Desktop/Dev/personal-goals/accomplishments && touch 2015-"$1".md;
      cat 0-review-template.md >> 2015-"$1".md && vim 2015-"$1".md;
  fi
}

# add a thing to do the the following week
# this function opens the newest accomplishments file in vim
# nw stands for "next week"
function pg-nw() {
  if [ $# -eq 0 ]; then
    cd ~/Desktop/Dev/personal-goals/accomplishments;
    newestFile=$(ls -t | head -n1);
    vim $newestFile;
  fi
}

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
