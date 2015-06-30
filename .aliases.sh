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

# install all the things
alias start-project="bundle install && bower install && npm install"

# instant web server
alias serve-me="python -m SimpleHTTPServer 8000"

# let terminal speak for me with 's'
alias s="say -v 'vicki'"
