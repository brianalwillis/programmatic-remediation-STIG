<#
.SYNOPSIS
    User Account Control approval mode for the built-in Administrator must be enabled.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-08-16
    Last Modified   : 2025-08-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000245

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-SO-000245).ps1 
#>

# Run this script as Administrator

# Ensure FilterAdministratorToken is set to 1
$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$ValueName = "FilterAdministratorToken"
$DesiredValue = 1

# Check if the registry key exists; create if missing
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force
}

# Get current value
$currentValue = Get-ItemProperty -Path $RegPath -Name $ValueName -ErrorAction SilentlyContinue

# If value is missing or not equal to desired, set it
if ($null -eq $currentValue.$ValueName -or $currentValue.$ValueName -ne $DesiredValue) {
    Set-ItemProperty -Path $RegPath -Name $ValueName -Value $DesiredValue -Type DWord
    Write-Output "Registry value FilterAdministratorToken set to $DesiredValue"
} else {
    Write-Output "Registry value FilterAdministratorToken is already configured correctly"
}
