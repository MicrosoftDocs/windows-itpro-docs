---
title: Windows Defender in Windows 10 (Windows 10)
description: This topic provides an overview of Windows Defender, including a list of system requirements and new features.
ms.assetid: 6A9EB85E-1F3A-40AC-9A47-F44C4A2B55E2
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: brianlic-msft
---

# Windows Defender in Windows 10


**Applies to**

-   Windows 10

Windows Defender in Windows 10 is a built-in antimalware solution that provides security and antimalware management for desktops, portable computers, and servers.

This topic provides an overview of Windows Defender, including a list of system requirements and new features.

For more important information about running Windows Defender on a server platform, see [Windows Defender Overview for Windows Server Technical Preview](https://technet.microsoft.com/library/dn765478.aspx).

Take advantage of Windows Defender by configuring the settings and definitions using the following tools:

-   Microsoft Active Directory *Group Policy* for settings
-   Windows Server Update Services (WSUS) for definitions

Windows Defender provides the most protection when cloud-based protection is enabled. Learn how to enable cloud-based protection in [Configure Windows Defender in Windows 10](configure-windows-defender-for-windows-10.md).

**Note**  System Center 2012 R2 Configuration Manager SP1, System Center 2012 Configuration Manager SP2, and Microsoft Intune can provide centralized management of Windows Defender, including:
-   Settings management
-   Definition update management
-   Alerts and alert management
-   Reports and report management

When you enable endpoint protection for your clients, it will install an additional management layer on Windows Defender to manage the in-box Windows Defender agent. While the client user interface will still appear as Windows Defender, the management layer for Endpoint Protection will be listed in the **Add/Remove Programs** control panel, though it will appear as if the full product is installed.

 

### Minimum system requirements

Windows Defender has the same hardware requirements as Windows 10. For more information, see:

-   [Minimum hardware requirements](https://msdn.microsoft.com/library/windows/hardware/dn915086.aspx)
-   [Hardware component guidelines](https://msdn.microsoft.com/library/windows/hardware/dn915049.aspx)

### New and changed functionality

-   **Improved detection for unwanted applications and emerging threats using cloud-based protection.** Use the Microsoft Active Protection Service to improve protection against unwanted applications and advanced persistent threats in your enterprise.

-   **Windows 10 integration.** All Windows Defender in Windows 10 endpoints will show the Windows Defender user interface, even when the endpoint is managed.

-   **Operating system, enterprise-level management, and bring your own device (BYOD) integration.** Windows 10 introduces a mobile device management (MDM) interface for devices running Windows 10. Administrators can use MDM-capable products, such as Intune, to manage Windows Defender on Windows 10 devices.

For more information about what's new in Windows Defender in Windows 10, see [Windows Defender in Windows 10: System integration](https://www.microsoft.com/security/portal/enterprise/threatreports_august_2015.aspx) on the Microsoft Active Protection Service website.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)</p></td>
<td align="left"><p>IT professionals can manage Windows Defender on Windows 10 endpoints in their organization using Active Directory or WSUS, apply updates to endpoints, and manage scans using:</p>
<ul>
<li>Group Policy Settings</li>
<li>Windows Management Instrumentation (WMI)</li>
<li>Windows PowerShell</li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>[Configure Windows Defender in Windows 10](configure-windows-defender-for-windows-10.md)</p></td>
<td align="left"><p>IT professionals can configure definition updates and cloud-based protection in Windows Defender in Windows 10 through Active Directory and WSUS.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-for-windows-10.md)</p></td>
<td align="left"><p>IT professionals can review information about <em>event IDs</em> in Windows Defender for Windows 10 and see any relevant action they can take.</p></td>
</tr>
</tbody>
</table>

 

 

 





