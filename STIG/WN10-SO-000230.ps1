<#
.SYNOPSIS
    The system must be configured to use FIPS-compliant algorithms for encryption, hashing, and signing.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-07-23
    Last Modified   : 2025-07-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000230

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-SO-000230).ps1 
#>

# Run this script as Administrator

# Define registry path and values
$regPath = 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\FIPSAlgorithmPolicy'
$regName = 'Enabled'
$desiredValue = 1

# Create registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the required value
Set-ItemProperty -Path $regPath -Name $regName -Value $desiredValue -Type DWord

# Confirm the change
$currentValue = Get-ItemPropertyValue -Path $regPath -Name $regName
Write-Host "FIPSAlgorithmPolicy 'Enabled' is set to: $currentValue (1 = FIPS-compliant algorithms enforced)"
