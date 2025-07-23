<#
.SYNOPSIS
    Users must be prompted for a password on resume from sleep (on battery).

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-07-23
    Last Modified   : 2025-07-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000145

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000145).ps1 
#>

# Run this script as Administrator

# Define registry path and key
$regPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51'
$regName = 'DCSettingIndex'
$desiredValue = 1

# Create the registry key path if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the required value to prompt for password on resume from battery sleep
Set-ItemProperty -Path $regPath -Name $regName -Value $desiredValue -Type DWord

# Confirm the change
$currentValue = Get-ItemPropertyValue -Path $regPath -Name $regName
Write-Host "Password prompt on resume from sleep (battery) is set to: $currentValue (1 = Enabled)"
