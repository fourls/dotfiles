#!/bin/bash

alias gsw="git switch"
alias gswc="git switch -c"
alias back="git checkout -"
alias uncommit="echo \"Uncommitting \$(git rev-parse HEAD)...\" && git reset HEAD~1"
alias amend="git commit --amend"
alias amendm="git commit --amend -m"
alias cherry="git cherry-pick"

alias ms="git switch master"
alias msp="git fetch master && git switch master"
alias remaster="git rebase master"

reb() {
  local branch=${1:-master}
  git rebase "$branch"
}

rebi() {
  local branch=${1:-master}
  git rebase -i "$branch"
}

msf() {
  local remote=${1:-origin}
  git fetch "$remote" "master:master"
}

function rebonto {
  local base=${1:-master}
  local branch
  branch=$(git branch --show-current)
  git rebase --onto "$base" "$(git merge-base "$branch" "$base")" "$branch"
}

function rst {
  local branch=${1:-HEAD}
  git reset --hard "$branch"
}