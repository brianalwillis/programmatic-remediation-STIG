<#
.SYNOPSIS
    The Application event log size must be configured to 32768 KB or greater.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 2025-06-29
    Last Modified   : 2025-06-29
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>

# Run this script as Administrator

# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"

# Check if the registry key exists; if not, create it
if (-Not (Test-Path -Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the MaxSize DWORD value to 0x8000 (32768 in decimal)
New-ItemProperty -Path $regPath -Name "MaxSize" -Value 0x8000 -PropertyType DWord -Force | Out-Null

# Optional: Confirm the value was set
$setValue = Get-ItemProperty -Path $regPath -Name "MaxSize"
Write-Output "MaxSize set to: $($setValue.MaxSize)"
