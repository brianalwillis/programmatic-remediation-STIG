<#
.SYNOPSIS
    The LanMan authentication level must be set to send NTLMv2 response only, and to refuse LM and NTLM.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-08-16
    Last Modified   : 2025-08-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000205

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-SO-000205).ps1 
#>

# Run this script as Administrator

# Ensure LmCompatibilityLevel is set to 5
$RegPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$ValueName = "LmCompatibilityLevel"
$DesiredValue = 5

# Check if the registry key exists; create if missing
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force
}

# Get current value
$currentValue = Get-ItemProperty -Path $RegPath -Name $ValueName -ErrorAction SilentlyContinue

# If value is missing or not equal to desired, set it
if ($null -eq $currentValue.$ValueName -or $currentValue.$ValueName -ne $DesiredValue) {
    Set-ItemProperty -Path $RegPath -Name $ValueName -Value $DesiredValue -Type DWord
    Write-Output "Registry value LmCompatibilityLevel set to $DesiredValue"
} else {
    Write-Output "Registry value LmCompatibilityLevel is already configured correctly"
}
