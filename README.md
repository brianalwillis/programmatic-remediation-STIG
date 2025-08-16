<h1 = align=center><code>MICROSOFT WINDOWS 10 DISA STIG</code></h1>

<h3 align="center"><em>
Windows STIGs <code>(Security Technical Implementation Guides)</code> are standardized security guidelines developed by the <code>Defense Information Systems Agency</code> (DISA) to ensure that Windows systems are configured securely, minimizing vulnerabilities and preventing unauthorized access.
</em></h3>

<h2 = align=center><em><code>Baseline Scan:</code> 29 June 2025</em></h2>

<h3 = align=center><em><code>147</code> Failed &nbsp;&nbsp;&nbsp;&nbsp; <code>15</code> Warning &nbsp;&nbsp;&nbsp;&nbsp; <code>100</code> Passed &nbsp;&nbsp;&nbsp;&nbsp; <code>262</code> Total STIGs </em></h3>

<h2 = align=center><em><code>Scan #1:</code> 23 July 2025</em></h2>

<h3 = align=center><em><code>137</code> Failed &nbsp;&nbsp;&nbsp;&nbsp; <code>15</code> Warning &nbsp;&nbsp;&nbsp;&nbsp; <code>110</code> Passed &nbsp;&nbsp;&nbsp;&nbsp; <code>15</code> Remediations </em></h3>

<h2 = align=center><code>Remediation Table</code></h2>

| *STIG ID*                                                                         | *Severity*   | *Description*                                                                                          | *Language*   | *Script*                                                                                                            |
|-----------------------------------------------------------------------------------|--------------|:-------------------------------------------------------------------------------------------------------|--------------|---------------------------------------------------------------------------------------------------------------------|
| [*`WN10‑AU‑000500`*](https://stigaview.com/products/win10/v3r2/WN10-AU-000500/)   | *Medium*     | The Application event log size must be configured to 32768 KB or greater.                              | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-AU-000500.ps1) |
| [*`WN10-CC-000005`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000005/)   | *Medium*     |  Camera access from the lock screen must be disabled.                                                  | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000005.ps1) |
| [*`WN10-CC-000145`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000145/)   | *Medium*     |  Users must be prompted for a password on resume from sleep (on battery).                              | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000145.ps1) |
| [*`WN10-CC-000150`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000150/)   | *Medium*     |  Users must be prompted for a password on resume from sleep (on battery).                              | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000150.ps1) |
| [*`WN10-CC-000190`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000190/)   | *Medium*     |  Autoplay must be disabled for all drives.                                                             | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000190.ps1) |
| [*`WN10-CC-000325`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000325/)   | *Medium*     |  Automatically signing in the last interactive user after a system-initiated restart must be disabled. | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000325.ps1) |
| [*`WN10-CC-000370`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000370/)   | *Medium*     |  The convenience PIN for Windows 10 must be disabled.                                                  | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000370.ps1) |
| [*`WN10-SO-000010`*](https://stigaview.com/products/win10/latest/WN10-SO-000010/) | *Medium*     | The built-in guest account must be disabled.                                                           | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000010.ps1) |
| [*`WN10-SO-000030`*](https://stigaview.com/products/win10/latest/WN10-SO-000030/) | *Medium*     | Audit policy using subcategories must be enabled.                                                      | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000030.ps1) |
| [*`WN10-SO-000035`*](https://stigaview.com/products/win10/latest/WN10-SO-000035/) | *Medium*     | Outgoing secure channel traffic must be encrypted or signed.                                           | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000035.ps1) |
| [*`WN10-SO-000230`*](https://stigaview.com/products/win10/latest/WN10-SO-000230/) | *Medium*     | The system must be configured to use FIPS-compliant algorithms for encryption, hashing, and signing.   | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000230.ps1) |
| [*`WN10-SO-000255`*](https://stigaview.com/products/win10/latest/WN10-SO-000255/) | *Medium*     | User Account Control must automatically deny elevation requests for standard users.                    | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000255.ps1) |
| [*`WN10-SO-000260`*](https://stigaview.com/products/win10/latest/WN10-SO-000260/) | *Medium*     | User Account Control must be configured to detect application installations and prompt for elevation.  | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000260.ps1) |
| [*`WN10-SO-000265`*](https://stigaview.com/products/win10/latest/WN10-SO-000265/) | *Medium*     | User Account Control must only elevate UIAccess applications that are installed in secure locations.   | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000265.ps1) |
| [*`WN10-SO-000270`*](https://stigaview.com/products/win10/latest/WN10-SO-000270/) | *Medium*     | User Account Control must run all administrators in Admin Approval Mode, enabling UAC.                 | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000270.ps1) |

<h2 = align=center><code>STIG Sessions</code></h2>

<p = align=center>
<img width="765" height="387" alt="STIG 1" src="https://github.com/user-attachments/assets/be780f89-84cd-4944-a5fe-6745a0a38439" />
</p>
