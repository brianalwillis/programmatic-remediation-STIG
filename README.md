<h1 = align=center><code>MICROSOFT WINDOWS 10 DISA STIG</code></h1>

<p = align=center>
<img width="720" height="264" alt="cover" src="https://github.com/user-attachments/assets/4748d469-70ea-4e63-b9b5-5c762c716c6d" />
</p>

<h3 align="center"><em>
Windows STIGs <code>(Security Technical Implementation Guides)</code> are standardized security guidelines developed by the <code>Defense Information Systems Agency</code> (DISA) to ensure that Windows systems are configured securely, minimizing vulnerabilities and preventing unauthorized access.
</em></h3>

---

<h2 = align=center><em><code>Baseline Scan: 29 June 2025</code></em></h2>

<div align="center">
  
| *Failed* | *Warning* | *Passed* | *DISA STIGS* |
|:--------:|:---------:|:--------:|:------------:|
| *`147`*  | *`15`*    | *`100`*  | *`262`*      | 

</div>

<h2 = align=center><em><code>Scan #1: 23 July 2025</code></em></h2>

<div align="center">
  
| *Failed* | *Warning* | *Passed* | *Remediations* |
|:--------:|:---------:|:--------:|:--------------:|
| *`137`*  | *`15`*    | *`110`*  | *`15`*         | 


</div>

</div>

<h2 = align=center><em><code>Scan #2: 16 August 2025</code></em></h2>

<div align="center">
  
| *Failed* | *Warning* | *Passed* | *Remediations* |
|:--------:|:---------:|:--------:|:--------------:|
| *`115`*  | *`15`*    | *`132`*  | *`15`*         | 


</div>

---

<h2 = align=center><code>Remediation Table</code></h2>

| *STIG ID*                                                                         | *Severity*   | *Description*                                                                                              | *Language*   | *Script*                                                                                                            |
|-----------------------------------------------------------------------------------|:------------:|:-----------------------------------------------------------------------------------------------------------|--------------|---------------------------------------------------------------------------------------------------------------------|
| [*`WN10‑AU‑000500`*](https://stigaview.com/products/win10/v3r2/WN10-AU-000500/)   | *Medium*     | The Application event log size must be configured to 32768 KB or greater.                                  | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-AU-000500.ps1) |
| [*`WN10-CC-000005`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000005/)   | *Medium*     | Camera access from the lock screen must be disabled.                                                       | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000005.ps1) |
| [*`WN10-CC-000010`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000010/)   | *Medium*     | The display of slide shows on the lock screen must be disabled.                                            | *PowerShell* |  |
| [*`WN10-CC-000020`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000020/)   | *Medium*     | IPv6 source routing must be configured to highest protection.                                              | *PowerShell* |  |
| [*`WN10-CC-000039`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000039/)   | *Medium*     | Run as different user must be removed from context menus.                                                  | *PowerShell* |  |
| [*`WN10-CC-000040`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000040/)   | *Medium*     | Insecure logons to an SMB server must be disabled.                                                         | *PowerShell* |  |
| [*`WN10-CC-000066`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000066/)   | *Medium*     | Command line data must be included in process creation events.                                             | *PowerShell* |  |
| [*`WN10-CC-000120`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000120/)   | *Medium*     | The network selection user interface (UI) must not be displayed on the logon screen.                       | *PowerShell* |  |
| [*`WN10-CC-000145`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000145/)   | *Medium*     | Users must be prompted for a password on resume from sleep (on battery).                                   | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000145.ps1) |
| [*`WN10-CC-000150`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000150/)   | *Medium*     | Users must be prompted for a password on resume from sleep (on battery).                                   | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000150.ps1) |
| [*`WN10-CC-000155`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000155/)   | *High*       | Solicited Remote Assistance must not be allowed.                                                           | *PowerShell* |  |
| [*`WN10-CC-000180`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000180/)   | *Medium*     | Autoplay must be turned off for non-volume devices.                                                        | *PowerShell* |  |
| [*`WN10-CC-000190`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000190/)   | *Medium*     | Autoplay must be disabled for all drives.                                                                  | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000190.ps1) |
| [*`WN10-CC-000210`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000210/)   | *Medium*     | The Windows Defender SmartScreen for Explorer must be enabled.                                             | *PowerShell* |  |
| [*`WN10-CC-000260`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000260/)   | *Medium*     | Windows 10 must be configured to require a minimum pin length of six characters or greater.                | *PowerShell* |  |
| [*`WN10-CC-000280`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000280/)   | *Medium*     | Remote Desktop Services must always prompt a client for passwords upon connection.                         | *PowerShell* |  |
| [*`WN10-CC-000315`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000315/)   | *High*       | The Windows Installer "Always install with elevated privileges" must be disabled.                          | *PowerShell* |  |
| [*`WN10-CC-000325`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000325/)   | *Medium*     | Automatically signing in the last interactive user after a system-initiated restart must be disabled.      | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000325.ps1) |
| [*`WN10-CC-000326`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000326/)   | *Medium*     | PowerShell script block logging must be enabled on Windows 10.                                             | *PowerShell* |  |
| [*`WN10-CC-000350`*](https://stigaview.com/products/win10/v2r8/WN10-CC-000350/)   | *Medium*     | The Windows Remote Management (WinRM) service must not allow unencrypted traffic.                          | *PowerShell* |  |
| [*`WN10-CC-000370`*](https://stigaview.com/products/win10/v3r3/WN10-CC-000370/)   | *Medium*     | The convenience PIN for Windows 10 must be disabled.                                                       | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-CC-000370.ps1) |
| [*`WN10-SO-000010`*](https://stigaview.com/products/win10/latest/WN10-SO-000010/) | *Medium*     | The built-in guest account must be disabled.                                                               | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000010.ps1) |
| [*`WN10-SO-000030`*](https://stigaview.com/products/win10/latest/WN10-SO-000030/) | *Medium*     | Audit policy using subcategories must be enabled.                                                          | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000030.ps1) |
| [*`WN10-SO-000035`*](https://stigaview.com/products/win10/latest/WN10-SO-000035/) | *Medium*     | Outgoing secure channel traffic must be encrypted or signed.                                               | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000035.ps1) |
| [*`WN10-SO-000070`*](https://stigaview.com/products/win10/v2r8/WN10-SO-000070/)   | *Medium*     | The machine inactivity limit must be set to 15 minutes, locking the system with the screensaver.           | *PowerShell* |  |
| [*`WN10-SO-000075`*](https://stigaview.com/products/win10/v2r8/WN10-SO-000075/)   | *Medium*     | The required legal notice must be configured to display before console logon.                              | *PowerShell* |  |
| [*`WN10-SO-000080`*](https://stigaview.com/products/win10/v3r2/WN10-SO-000080/)   | *Low*        | The Windows dialog box title for the legal banner must be configured.                                      | *PowerShell* |  |
| [*`WN10-SO-0000167`*](https://stigaview.com/products/win10/v2r8/WN10-SO-000167/)  | *Medium*     | Remote calls to the Security Account Manager (SAM) must be restricted to Administrators.                   | *PowerShell* |  |
| [*`WN10-SO-0000180`*](https://stigaview.com/products/win10/v2r8/WN10-SO-000180/)  | *Medium*     | NTLM must be prevented from falling back to a Null session.                                                | *PowerShell* |  |
| [*`WN10-SO-000205`*](https://stigaview.com/products/win10/v3r3/WN10-SO-000205/)   | *High*       | The LanMan authentication level must be set to send NTLMv2 response only, and to refuse LM and NTLM.       | *PowerShell* |  |
| [*`WN10-SO-000215`*](https://stigaview.com/products/win10/v2r8/WN10-SO-000215/)   | *Medium*     | The system must be configured to meet the minimum session security requirement for NTLM SSP-based clients. | *PowerShell* |  |
| [*`WN10-SO-000230`*](https://stigaview.com/products/win10/latest/WN10-SO-000230/) | *Medium*     | The system must be configured to use FIPS-compliant algorithms for encryption, hashing, and signing.       | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000230.ps1) |
| [*`WN10-SO-000245`*](https://stigaview.com/products/win10/v3r3/WN10-SO-000245/)   | *Medium*     | User Account Control approval mode for the built-in Administrator must be enabled.                         | *PowerShell* |  |
| [*`WN10-SO-000255`*](https://stigaview.com/products/win10/latest/WN10-SO-000255/) | *Medium*     | User Account Control must automatically deny elevation requests for standard users.                        | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000255.ps1) |
| [*`WN10-SO-000260`*](https://stigaview.com/products/win10/latest/WN10-SO-000260/) | *Medium*     | User Account Control must be configured to detect application installations and prompt for elevation.      | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000260.ps1) |
| [*`WN10-SO-000265`*](https://stigaview.com/products/win10/latest/WN10-SO-000265/) | *Medium*     | User Account Control must only elevate UIAccess applications that are installed in secure locations.       | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000265.ps1) |
| [*`WN10-SO-000270`*](https://stigaview.com/products/win10/latest/WN10-SO-000270/) | *Medium*     | User Account Control must run all administrators in Admin Approval Mode, enabling UAC.                     | *PowerShell* | [*`Remediation`*](https://github.com/brianalwillis/programmatic-remediation-STIG/blob/main/STIG/WN10-SO-000270.ps1) |

<h2 = align=center><code>STIG Sessions</code></h2>

<p = align=center>
<img width="765" height="387" alt="STIG 1" src="https://github.com/user-attachments/assets/be780f89-84cd-4944-a5fe-6745a0a38439" />
</p>
