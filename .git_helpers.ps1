function gsw { & git switch @args }
function gswc { & git switch -C @args }
function back { & git checkout - }
function uncommit {
  Write-Output "Uncommiting $(git rev-parse HEAD)..."
  & git reset HEAD~1
}
function gam { & git commit --amend @args }
function gamm { & git commit --amend -m @args }
function cherry { & git cherry-pick @args }

function ms { & git switch master }
function msp { & git fetch master; & git switch master }
function remaster { & git rebase master }

function reb([string]$Branch) {
  if (-not $Branch) { $Branch = "master" }
  & git rebase $Branch
}

function rebi([string]$Branch) {
  if (-not $Branch) { $Branch = "master" }
  & git rebase -i master
}

function msf([string]$Remote) {
  if (-not $Remote) { $Remote = "origin" }
  & git fetch $Remote "master:master"
}

function rebonto([string]$Base) {
  if (-not $Base) { $Base = "master" }
  $Branch = & git branch --show-current
  & git rebase --onto $Branch $(git merge-base $Branch $Base) $Branch
}

function rst([string]$Branch) {
  if (-not $Branch) { $Branch = "HEAD" }
  & git reset --hard $Branch
}