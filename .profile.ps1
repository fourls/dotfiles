$env:EDITOR = 'vim'
$env:LANG = 'en_AU.UTF-8'

if ($env:DOTFILES) {
  . (Join-Path $env:DOTFILES .helpers.ps1)
  . (Join-Path $env:DOTFILES .git_helpers.ps1)
} else {
  Write-Host "`$env:DOTFILES is not set; helpers not loaded."
}