# Navigation shortcuts
function up1 { Set-Location .. }
function up2 { Set-Location ../.. }
function up3 { Set-Location ../../.. }
function up4 { Set-Location ../../../.. }
function up5 { Set-Location ../../../../.. }

# Neovim shortcut
function v { nvim @args }

# Eza-based directory listing aliases (PowerShell-compatible)
function ls  { eza -al --color=always --icons=always --group-directories-first }
function la  { eza -a --color=always --icons=always --group-directories-first }
function ll  { eza -l --color=always --icons=always --group-directories-first }
function lt  { eza -aT --color=always --icons=always --group-directories-first }

# Listing parent directories — renamed due to syntax limits in PowerShell
function l1  { eza -al --color=always --icons=always --group-directories-first ../ }
function l2  { eza -al --color=always --icons=always --group-directories-first ../../ }
function l3  { eza -al --color=always --icons=always --group-directories-first ../../../ }

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
