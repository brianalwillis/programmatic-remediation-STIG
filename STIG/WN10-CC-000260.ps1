<#
.SYNOPSIS
    Windows 10 must be configured to require a minimum pin length of six characters or greater.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-08-16
    Last Modified   : 2025-08-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000260

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000260).ps1 
#>

# Run this script as Administrator

# Registry path and value
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork\PINComplexity"
$ValueName = "MinimumPINLength"
$DesiredValue = 6

# Ensure the registry key exists
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Get current value
$currentValue = (Get-ItemProperty -Path $RegPath -Name $ValueName -ErrorAction SilentlyContinue).$ValueName

# Check if value is missing or misconfigured
if ($null -eq $currentValue) {
    Write-Output "$ValueName is not configured. Setting to $DesiredValue."
    New-ItemProperty -Path $RegPath -Name $ValueName -PropertyType DWORD -Value $DesiredValue -Force | Out-Null
} elseif ($currentValue -lt $DesiredValue) {
    Write-Output "$ValueName is too low ($currentValue). Updating to $DesiredValue."
    Set-ItemProperty -Path $RegPath -Name $ValueName -Value $DesiredValue
} else {
    Write-Output "$ValueName is configured correctly ($currentValue)."
}
