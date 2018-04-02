---
title: Quick fixes - Windows IT Pro
description: Resolve Windows 10 upgrade errors for ITPros. Technical information for IT professionals to help diagnose Windows setup errors.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.date: 03/30/2018
ms.localizationpriority: high
---

# Quick fixes

**Applies to**
-   Windows 10

>[!NOTE]
>This is a 100 level topic (basic).<br>
>See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.

The following steps can resolve many Windows upgrade problems.

<ol>
<LI>Remove nonessential external hardware, such as docks and USB devices.</LI> 
<LI>Check all hard drives for errors and attempt repairs. To automatically repair hard drives, open an elevated command prompt, switch to the drive you wish to repair, and type the following command. You will be required to reboot the computer if the hard drive being repaired is also the system drive.
<UL>
<LI>chkdsk /F</LI>
</UL>
</LI>
<LI>Attempt to restore and repair system files by typing the following commands at an elevated command prompt. It may take several minutes for the command operations to be completed. For more information, see [Repair a Windows Image](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/repair-a-windows-image).
<UL>
<LI>DISM.exe /Online /Cleanup-image /Restorehealth</LI>
<LI>sfc /scannow</LI>
</UL>
</LI>
<LI>Update Windows so that all available recommended updates are installed, and ensure the computer is rebooted if this is necessary to complete installation of an update.</LI>
<LI>Uninstall non-Microsoft antivirus software.
  <UL> 
  <LI>Use Windows Defender for protection during the upgrade. 
  <LI>Verify compatibility information and re-install antivirus applications after the upgrade.</LI></LI>
  </UL>
<LI>Uninstall all nonessential software.</LI>
<LI>Update firmware and drivers.</LI>
<LI>Ensure that "Download and install updates (recommended)" is accepted at the start of the upgrade process.</LI>
<LI>Verify at least 16 GB of free space is available to upgrade a 32-bit OS, or 20 GB for a 64-bit OS.
</OL>

## Related topics

[Windows 10 FAQ for IT professionals](https://technet.microsoft.com/en-us/windows/dn798755.aspx)
<br>[Windows 10 Enterprise system requirements](https://technet.microsoft.com/en-us/windows/dn798752.aspx)
<br>[Windows 10 Specifications](https://www.microsoft.com/en-us/windows/Windows-10-specifications)
<br>[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)
<br>[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
