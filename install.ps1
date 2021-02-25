Function New-SymLink ($target, $source)
{
    Write-Output "[+] Creating symlink from $target to $source"
    New-Item -Force -ItemType SymbolicLink -Value (Get-Item -Path $source).FullName -Path $target | Out-Null
}

New-Symlink "$PROFILE" "Microsoft.PowerShell_profile.ps1"

# Check posh-git
if (Get-Module -Name posh-git) {
    Write-Output "Updating posh-git"
    Update-Module -Name posh-git -Scope CurrentUser
} else {
    Write-Output "Installing posh-git"
    Install-Module -Name posh-git -Scope CurrentUser
}

# Check oh-my-posh
if (Get-Module -Name oh-my-posh) {
    Write-Output "Updating oh-my-posh"
    Update-Module -Name oh-my-posh -Scope CurrentUser
} else {
    Write-Output "Installing oh-my-posh"
    Install-Module -Name oh-my-posh -Scope CurrentUser
}