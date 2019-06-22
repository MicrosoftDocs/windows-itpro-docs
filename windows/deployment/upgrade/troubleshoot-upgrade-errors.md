---
title: Troubleshoot Windows 10 upgrade errors - Windows IT Pro
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: Resolve Windows 10 upgrade errors for ITPros. Technical information for IT professionals to help diagnose Windows setup errors.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---

# Troubleshooting upgrade errors

**Applies to**
-   Windows 10

>[!NOTE]
>This is a 300 level topic (moderately advanced).<br>
>See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.

If a Windows 10 upgrade is not successful, it can be very helpful to understand *when* an error occurred in the upgrade process. 

Briefly, the upgrade process consists of four phases: **Downlevel**, **SafeOS**, **First boot**, and **Second boot**. The computer will reboot once between each phase. Note: Progress is tracked in the registry during the upgrade process using the following key: **HKLM\System\Setup\mosetup\volatile\SetupProgress**. This key is volatile and only present during the upgrade process; it contains a binary value in the range 0-100.

These phases are explained in greater detail [below](#the-windows-10-upgrade-process). First, let's summarize the actions performed during each phase because this affects the type of errors that can be encountered.

1. **Downlevel phase**: Because this phase runs on the source OS, upgrade errors are not typically seen. If you do encounter an error, ensure the source OS is stable. Also ensure the Windows setup source and the destination drive are accessible. 

2. **SafeOS phase**: Errors most commonly occur during this phase due to hardware issues, firmware issues, or non-microsoft disk encryption software.

    Since the computer is booted into Windows PE during the SafeOS phase, a useful troubleshooting technique is to boot into [Windows PE](https://docs.microsoft.com/windows-hardware/manufacture/desktop/winpe-intro) using installation media. You can use the [media creation tool](https://www.microsoft.com/software-download/windows10) to create bootable media, or you can use tools such as the [Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit), and then boot your device from this media to test for hardware and firmware compatibility issues.

    >[!TIP]
    >If you attempt to use the media creation tool with a USB drive and this fails with error 0x80004005 - 0xa001a, this is because the USB drive is using GPT partition style. The tool requires that you use MBR partition style. You can use the DISKPART command to convert the USB drive from GPT to MBR. For more information, see [Change a GUID Partition Table Disk into a Master Boot Record Disk](https://go.microsoft.com/fwlink/?LinkId=207050).

    **Do not proceed with the Windows 10 installation after booting from this media**. This method can only be used to perform a clean install which will not migrate any of your apps and settings, and you will be required re-enter your Windows 10 license information.

    If the computer does not successfully boot into Windows PE using the media that you created, this is likely due to a hardware or firmware issue. Check with your hardware manufacturer and apply any recommended BIOS and firmware updates. If you are still unable to boot to installation media after applying updates, disconnect or replace legacy hardware.

    If the computer successfully boots into Windows PE, but you are not able to browse the system drive on the computer, it is possible that non-Microsoft disk encryption software is blocking your ability to perform a Windows 10 upgrade. Update or temporarily remove the disk encryption.

3. **First boot phase**: Boot failures in this phase are relatively rare, and almost exclusively caused by device drivers.  Disconnect all peripheral devices except for the mouse, keyboard, and display. Obtain and install updated device drivers, then retry the upgrade.

4. **Second boot phase**: In this phase, the system is running under the target OS with new drivers. Boot failures are most commonly due to anti-virus software or filter drivers. Disconnect all peripheral devices except for the mouse, keyboard, and display. Obtain and install updated device drivers, temporarily uninstall anti-virus software, then retry the upgrade.
 
If the general troubleshooting techniques described above or the [quick fixes](quick-fixes.md) detailed below do not resolve your issue, you can attempt to analyze [log files](log-files.md) and interpret [upgrade error codes](upgrade-error-codes.md). You can also [Submit Windows 10 upgrade errors using Feedback Hub](submit-errors.md) so that Microsoft can diagnose your issue.

## The Windows 10 upgrade process

The **Windows Setup** application is used to upgrade a computer to Windows 10, or to perform a clean installation. Windows Setup starts and restarts the computer, gathers information, copies files, and creates or adjusts configuration settings. 

When performing an operating system upgrade, Windows Setup uses phases described below. A reboot occurs between each of the phases. After the first reboot, the user interface will remain the same until the upgrade is completed. Percent progress is displayed and will advance as you move through each phase, reaching 100% at the end of the second boot phase.

1. **Downlevel phase**: The downlevel phase is run within the previous operating system. Windows files are copied and installation components are gathered.

    ![downlevel phase](../images/downlevel.png)  

2. **Safe OS phase**: A recovery partition is configured, Windows files are expanded, and updates are installed. An OS rollback is prepared if needed. Example error codes: 0x2000C, 0x20017.

    ![safeOS phase](../images/safeos.png) 

3. **First boot phase**: Initial settings are applied. Example error codes: 0x30018, 0x3000D.

    ![first boot phase](../images/firstboot.png) 

4. **Second boot phase**: Final settings are applied. This is also called the **OOBE boot phase**. Example error codes: 0x4000D, 0x40017. 

    At the end of the second boot phase, the **Welcome to Windows 10** screen is displayed, preferences are configured, and the Windows 10 sign-in prompt is displayed.

    ![second boot phase](../images/secondboot.png) 

    ![second boot phase](../images/secondboot2.png) 

    ![second boot phase](../images/secondboot3.png) 

5. **Uninstall phase**: This phase occurs if upgrade is unsuccessful (image not shown). Example error codes: 0x50000, 0x50015.

**Figure 1**: Phases of a successful Windows 10 upgrade (uninstall is not shown):

![Upgrade process](../images/upgrade-process.png)

DU = Driver/device updates.<br>
OOBE = Out of box experience.<br>
WIM = Windows image (Microsoft)

## Related topics

[Windows 10 FAQ for IT professionals](https://technet.microsoft.com/windows/dn798755.aspx)
<br>[Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)
<br>[Windows 10 Specifications](https://www.microsoft.com/en-us/windows/Windows-10-specifications)
<br>[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)
<br>[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
