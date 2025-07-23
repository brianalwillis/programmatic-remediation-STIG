<#
.SYNOPSIS
    This PowerShell script ensures that the User Account Control is configured to detect application installations and prompt for elevation.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-06-30
    Last Modified   : 2025-06-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000260 

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-SO-000260).ps1 
#>

# Run this script as Administrator

# Define registry path and value
$regPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$valueName = "EnableInstallerDetection"
$valueData = 1

# Create the registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the DWORD value
New-ItemProperty -Path $regPath -Name $valueName -Value $valueData -PropertyType DWord -Force | Out-Null

# Optional: Confirm the value
$setValue = Get-ItemProperty -Path $regPath -Name $valueName
Write-Output "$valueName set to: $($setValue.$valueName)"
