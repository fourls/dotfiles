$MyModules = @(
  'PowerShellGet',
  'PSReadLine',
  'PsFzf'
)

Import-Module $MyModules

Set-PsFzfOption -PSReadlineChordProvider 'ctrl+t' -PSReadlineChordReverseHistory 'ctrl+r'

function Prompt {
  $Elements = @()

  $Elements += ,@($env:USERNAME, "Green")
  $Elements += ,@(" $($ExecutionContext.SessionState.Path.CurrentLocation) ", "Cyan")
  
  & git rev-parse --is-inside-work-tree 2>&1 | Out-Null
  if (-not $LASTEXITCODE) {
    $Revision = & git symbolic-ref --short HEAD
    if ($LASTEXITCODE) {
      $Revision = "$(& git rev-parse --short HEAD)..."
      if ($LASTEXITCODE) {
        $Revision = & git branch --show-current
      }
    }

    if (-not $LASTEXITCODE) {
      $Elements += ,@("($Revision)", "Blue")
    }
  }

  $Elements | ForEach-Object {
    Write-Host $_[0] -ForegroundColor $_[1] -NoNewline
  }

  # PS> gets written if no output is returned
  return "`n$ "
}

function Install-MyModules {
  Install-Module $MyModules -AcceptLicense
}