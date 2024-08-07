alias l='clear; ls -l'
alias ll='clear; ls -la'
alias testify='./bin/test --include-branch-commits'
alias logify='git log --graph --decorate --pretty=oneline --abbrev-commit'
alias stylify='./bin/style --include-branch-commits'
alias styleify='./bin/style --include-branch-commits'
alias tserve='tmux attach -t server'
alias graphqldump='bin/rails graphql:schema:dump'
alias dumpgraphql='bin/rails graphql:schema:dump'
alias nospring='DISABLE_SPRING=1'
alias ns='DISABLE_SPRING=1'
alias fwl='--force-with-lease'
alias ibc='--include-branch-commits'

#############
# Git Aliases
alias g='git'
alias gst='git status'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
gdv() { git diff -w "$@" | view - }
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gcm='git checkout master'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg='git log --stat --max-count=5'
alias glgg='git log --graph --max-count=5'
alias gss='git status -s'
alias ga='git add'
alias gm='git merge'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

alias gsr='git svn rebase'
alias gsd='git svn dcommit'
#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function current_repository() {

  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo $(git remote -v | cut -d':' -f 2)
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
#############
