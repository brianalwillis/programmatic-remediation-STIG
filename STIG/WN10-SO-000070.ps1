<#
.SYNOPSIS
    The machine inactivity limit must be set to 15 minutes, locking the system with the screensaver.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-08-16
    Last Modified   : 2025-08-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000070

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-SO-000070).ps1 
#>

# Run this script as Administrator

# Registry path and value
$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$ValueName = "InactivityTimeoutSecs"
$MaxValue = 900  # Maximum allowed value (900 seconds)
$MinValue = 1    # Minimum allowed value (exclude 0)

# Ensure the registry key exists
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Get current value
$currentValue = (Get-ItemProperty -Path $RegPath -Name $ValueName -ErrorAction SilentlyContinue).$ValueName

# Check if value is missing or misconfigured
if ($null -eq $currentValue -or $currentValue -gt $MaxValue -or $currentValue -eq 0) {
    Write-Output "$ValueName is missing or misconfigured. Setting to $MaxValue seconds."
    New-ItemProperty -Path $RegPath -Name $ValueName -PropertyType DWORD -Value $MaxValue -Force | Out-Null
} else {
    Write-Output "$ValueName is configured correctly ($currentValue seconds)."
}
