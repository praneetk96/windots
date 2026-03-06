# Navigation shortcuts
function .. { Set-Location .. }
function ... { Set-Location ../.. }
function .3 { Set-Location ../../.. }
function .4 { Set-Location ../../../.. }
function .5 { Set-Location ../../../../.. }

# Neovim shortcut
function v { nvim @args }

# Eza-based directory listing aliases (PowerShell-compatible)
function ls  { eza -al --color=always --icons=always --group-directories-first }
function la  { eza -a --color=always --icons=always --group-directories-first }
function ll  { eza -l --color=always --icons=always --group-directories-first }
function lt  { eza -aT --color=always --icons=always --group-directories-first }

# Listing parent directories — renamed due to syntax limits in PowerShell
function l.  { eza -al --color=always --group-directories-first ../ }
function l..  { eza -al --color=always --group-directories-first ../../ }
function l... { eza -al --color=always --group-directories-first ../../../ }

# Show only dotfiles in current directory
function ldot { eza -a | Select-String "^\." }

# function to make dir and change into it at the same time
function mcd {
    param (
        [Parameter(Mandatory=$true)]
        [string]$name
    )
    New-Item -ItemType Directory -Path $name -Force | Out-Null
    Set-Location $name
}

# git
function addup    { git add -u }
function addall   { git add . }
function branch   { git branch }
function checkout { git checkout @args }
function clone    { git clone @args }
function commit   { git commit -m "$args" }
function fetch    { git fetch }
function pull     { git pull origin }
function push     { git push origin }
function tag      { git tag }
function newtag   { git tag -a @args }

Invoke-Expression (&starship init powershell)

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
