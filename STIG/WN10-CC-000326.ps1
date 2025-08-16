<#
.SYNOPSIS
    PowerShell script block logging must be enabled on Windows 10.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-08-16
    Last Modified   : 2025-08-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000326

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000326).ps1 
#>

# Run this script as Administrator

# Registry path and value
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
$ValueName = "EnableScriptBlockLogging"
$DesiredValue = 1

# Ensure the registry key exists
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Get current value
$currentValue = (Get-ItemProperty -Path $RegPath -Name $ValueName -ErrorAction SilentlyContinue).$ValueName

# Check if value is missing or misconfigured
if ($null -eq $currentValue -or $currentValue -ne $DesiredValue) {
    Write-Output "$ValueName is missing or misconfigured. Setting to $DesiredValue."
    New-ItemProperty -Path $RegPath -Name $ValueName -PropertyType DWORD -Value $DesiredValue -Force | Out-Null
} else {
    Write-Output "$ValueName is configured correctly ($currentValue)."
}
