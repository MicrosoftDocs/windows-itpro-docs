---
title: Windows Defender in Windows 10 (Windows 10)
description: This topic provides an overview of Windows Defender, including a list of system requirements and new features.
ms.assetid: 6A9EB85E-1F3A-40AC-9A47-F44C4A2B55E2
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: jasesso
---

# Windows Defender in Windows 10

**Applies to**
-   Windows 10

Windows Defender in Windows 10 is a built-in antimalware solution that provides security and antimalware management for desktops, portable computers, and servers.
This topic provides an overview of Windows Defender, including a list of system requirements and new features.

For more important information about running Windows Defender on a server platform, see [Windows Defender Overview for Windows Server Technical Preview](https://technet.microsoft.com/library/dn765478.aspx).

Take advantage of Windows Defender by configuring settings and definitions using the following tools:
-   Microsoft Active Directory *Group Policy* for settings
-   Windows Server Update Services (WSUS) for definitions

Windows Defender provides the most protection when cloud-based protection is enabled. Learn how to enable cloud-based protection in [Configure Windows Defender in Windows 10](configure-windows-defender-in-windows-10.md).
> **Note:**  System Center 2012 R2 Configuration Manager SP1, System Center 2012 Configuration Manager SP2, and Microsoft Intune can provide centralized management of Windows Defender, including:
-   Settings management
-   Definition update management
-   Alerts and alert management
-   Reports and report management

When you enable endpoint protection for your clients, it will install an additional management layer on Windows Defender to manage the in-box Windows Defender agent. While the client user interface will still appear as Windows Defender, the management layer for Endpoint Protection will be listed in the **Add/Remove Programs** control panel, though it will appear as if the full product is installed.


### Compatibility with Windows Defender Advanced Threat Protection

Windows Defender Advanced Threat Protection (ATP) is an additional service that helps enterprises to detect, investigate, and respond to advanced persistent threats on their network. 

See the [Windows Defender Advanced Threat Protection](windows-defender-advanced-threat-protection.md) topics for more information about the service.

If you are enrolled in Windows Defender ATP, and you are not using Windows Defender as your real-time protection service on your endpoints, Windows Defender will automatically enter into a passive mode. 

In passive mode, Windows Defender will continue to run (using the *msmpeng.exe* process), and will continue to be updated, however there will be no Windows Defender user interface, scheduled scans won’t run, and Windows Defender will not provide real-time protection from malware.

You can [configure updates for Windows Defender](configure-windows-defender-in-windows-10.md), however you can't move Windows Defender into the normal active mode if your endpoints have an up-to-date third-party product providing real-time protection from malware.

If you uninstall the other product, and choose to use Windows Defender to provide protection to your endpoints, Windows Defender will automatically return to its normal active mode.


 
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

Topic | Description
:---|:---
[Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)|Use Active Directory or Windows Server Update Services to manage and deploy updates to endpoints on your network. Configure and run special scans, including archive and email scans.
[Configure updates for Windows Defender in Windows 10](configure-windows-defender-in-windows-10.md)|Configure definition updates and cloud-based protection with Active Directory and Windows Server Update Services.
[Windows Defender Offline in Windows 10](windows-defender-offline.md)|Manually run an offline scan directly from winthin Windows without having to download and create bootable media.
[Use PowerShell cmdlets for Windows Defender](use-powershell-cmdlets-windows-defender-for-windows-10.md)|Run scans and configure Windows Defender options with Windows PowerShell cmdlets in Windows 10.
[Enable the Block at First Sight feature in Windows 10](windows-defender-block-at-first-sight.md)|Use the Block at First Sight feature to leverage the Windows Defender cloud.
[Configure enhanced notifications for Windows Defender in Windows 10](windows-defender-enhanced-notifications.md)|Enable or disable enhanced notifications on endpoints running Windows Defender for greater details about threat detections and removal.
[Run a Windows Defender scan from the command line](run-cmd-scan-windows-defender-for-windows-10.md)|Use the command-line utility to run a Windows Defender scan.
[Detect and block Potentially Unwanted Applications with Windows Defender](enable-pua-windows-defender-for-windows-10.md)|Use the Potentially Unwanted Application (PUA) feature in Managed Windows Defender to identify and block unwanted software during download and install time.
[Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-in-windows-10.md)|Review event IDs in Windows Defender for Windows 10 and take the appropriate actions.
