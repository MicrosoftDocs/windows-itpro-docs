---
title: Resolution procedures - Windows IT Pro
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: Discover general troubleshooting procedures for dealing with 0xC1900101, the generic rollback code thrown when something goes wrong during a Windows 10 upgrade.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
audience: itpro
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---

# Resolution procedures

**Applies to**
- Windows 10

> [!NOTE]  
> This is a 200 level topic (moderate).  
> See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.

This topic provides some common causes and solutions that are associated with specific upgrade error codes. If a Windows 10 upgrade fails, you can write down the error code that is displayed, or find the error code in the Windows [Event Log](windows-error-reporting.md) or in the Windows Setup [log files](log-files.md) (ex: **setuperr.log**) and review the cause and solutions provided here. You should also try running the free [SetupDiag](setupdiag.md) tool provided by Microsoft, which can automatically find the reason for an upgrade failure.

## 0xC1900101

A frequently observed [result code](upgrade-error-codes.md#result-codes) is 0xC1900101. This result code can be thrown at any stage of the upgrade process, with the exception of the downlevel phase. 0xC1900101 is a generic rollback code, and usually indicates that an incompatible driver is present. The incompatible driver can cause blue screens, system hangs, and unexpected reboots. Analysis of supplemental log files is often helpful, such as:  

- The minidump file: $Windows.~bt\Sources\Rollback\setupmem.dmp,
- Event logs: $Windows.~bt\Sources\Rollback\*.evtx
- The device install log: $Windows.~bt\Sources\Rollback\setupapi\setupapi.dev.log

The device install log is particularly helpful if rollback occurs during the sysprep operation (extend code 0x30018).  

To resolve a rollback that was caused by driver conflicts, try running setup using a minimal set of drivers and startup programs by performing a [clean boot](https://support.microsoft.com/kb/929135) before initiating the upgrade process. Also check to be sure that your drivers are properly signed. For more information, see [Remove unsigned drivers](quick-fixes.md#repair-unsigned-drivers).

See the following general troubleshooting procedures associated with a result code of 0xC1900101:<br /><br />


| Code | Mitigation | Cause |
| :---     |  :---  |  :--- |
| 0xC1900101 - 0x20004   | Uninstall antivirus applications.<br>Remove all unused SATA devices. <br>Remove all unused devices and drivers. <br>Update drivers and BIOS.     | Windows Setup encountered an error during the SAFE_OS with the INSTALL_RECOVERY_ENVIRONMENT operation. <br>This is generally caused by out-of-date drivers.    |
| 0xC1900101 - 0x2000c     | Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display.<br> Contact your hardware vendor to obtain updated device drivers.<br> Ensure that "Download and install updates (recommended)" is accepted at the start of the upgrade process.       | Windows Setup encountered an unspecified error during Wim apply in the WinPE phase.<br> This is generally caused by out-of-date drivers      |
| 0xC1900101 - 0x20017 | Ensure that all that drivers are updated.<br>Open the Setuperr.log and Setupact.log files in the %windir%\Panther directory, and then locate the problem drivers.<br>For more information, see [Windows Vista, Windows 7, Windows Server 2008 R2, Windows 8.1, and Windows 10 setup log file locations](https://support.microsoft.com/en-us/help/927521/windows-vista-windows-7-windows-server-2008-r2-windows-8-1-and-windows).<br>Update or uninstall the problem drivers. | A driver has caused an illegal operation.<br>Windows was not able to migrate the driver, resulting in a rollback of the operating system.<br>This is a SafeOS boot failure, typically caused by drivers or non-Microsoft disk encryption software. |
| 0xC1900101 - 0x30018 | Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display.<br>Contact your hardware vendor to obtain updated device drivers.<br>Ensure that &quot;Download and install updates (recommended)&quot; is accepted at the start of the upgrade process. | A device driver has stopped responding to setup.exe during the upgrade process. |
| 0xC1900101 - 0x3000D | Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display.<br>Update or uninstall the display driver. | Installation failed during the FIRST_BOOT phase while attempting the MIGRATE_DATA operation.<br>This can occur due to a problem with a display driver. |
| 0xC1900101 - 0x4000D | Check supplemental rollback logs for a setupmem.dmp file, or event logs for any unexpected reboots or errors.<br>Review the rollback log and determine the stop code.<br>The rollback log is located in the <strong>$Windows.~BT\Sources\Rollback</strong> folder.  An example analysis is shown below. This example is not representative of all cases:<br>&nbsp;<br>Info SP     Crash 0x0000007E detected<br>Info SP       Module name           :<br>Info SP       Bugcheck parameter 1  : 0xFFFFFFFFC0000005<br>Info SP       Bugcheck parameter 2  : 0xFFFFF8015BC0036A<br>Info SP       Bugcheck parameter 3  : 0xFFFFD000E5D23728<br>Info SP       Bugcheck parameter 4  : 0xFFFFD000E5D22F40<br>Info SP     Cannot recover the system.<br>Info SP     Rollback: Showing splash window with restoring text: Restoring your previous version of Windows.<br>&nbsp;<br>Typically, there is a dump file for the crash to analyze. If you are not equipped to debug the dump, then attempt the following basic troubleshooting procedures:<br>&nbsp;<br>1. Make sure you have enough disk space.<br>2. If a driver is identified in the bug check message, disable the driver or check with the manufacturer for driver updates.<br>3. Try changing video adapters.<br>4. Check with your hardware vendor for any BIOS updates.<br>5. Disable BIOS memory options such as caching or shadowing. | A rollback occurred due to a driver configuration issue.<br>Installation failed during the second boot phase while attempting the MIGRATE_DATA operation.<br>This can occur because of incompatible drivers. |
| 0xC1900101 - 0x40017 | Clean boot into Windows, and then attempt the upgrade to Windows 10. For more information, see [How to perform a clean boot in Windows](https://support.microsoft.com/kb/929135).<br>&nbsp;<br>Ensure that you select the option to "Download and install updates (recommended)."  Also be sure to [remove unsigned drivers](quick-fixes.md#repair-unsigned-drivers).<br>&nbsp;<br><b>Computers that run Citrix VDA</b>  <br>You may see this message after you upgrade a computer from Windows 10, version 1511 to Windows 10, version 1607. After the second system restart, the system generates this error and then rolls back to the previous version. This problem has also been observed in upgrades to Windows 8.1 and Windows 8.  <br>&nbsp;<br>This problem occurs because the computer has Citrix Virtual Delivery Agent (VDA) installed. Citrix VDA installs device drivers and a file system filter driver (CtxMcsWbc). This Citrix filter driver prevents the upgrade from writing changes to the disk, so the upgrade cannot complete and the system rolls back.  <br>&nbsp;<br>**Resolution**<br>&nbsp;<br>To resolve this problem, install [Cumulative update for Windows 10 Version 1607 and Windows Server 2016: November 8, 2016](https://support.microsoft.com/help/3200970/cumulative-update-for-windows-10-version-1607-and-windows-server-2016).<br>&nbsp;<br>You can work around this problem in two ways:<br>&nbsp;<br>**Workaround 1**<br>&nbsp;<br>1. Use the VDA setup application (VDAWorkstationSetup_7.11) to uninstall Citrix VDA.<br>2. Run the Windows upgrade again.<br>3. Reinstall Citrix VDA.<br>&nbsp;<br>**Workaround 2**<br>&nbsp;<br>If you cannot uninstall Citrix VDA, follow these steps to work around this problem:  <br>&nbsp;<br>1. In Registry Editor, go to the following subkey:<br> **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}\CtxMcsWbc**<br>2. Change the value of the **Start** entry from **0** to **4**. This change disables the Citrix MCS cache service.<br>3. Go to the following subkey:<br> **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}**<br>4. Delete the **CtxMcsWbc** entry.<br>5. Restart the computer, and then try the upgrade again.<br>&nbsp;<br>**Non-Microsoft information disclaimer**  <br>The non-Microsoft products that this article discusses are manufactured by companies that are independent of Microsoft. Microsoft makes no warranty, implied or otherwise, about the performance or reliability of these products. | Windows 10 upgrade failed after the second reboot.<br>This is usually caused by a faulty driver. For example: antivirus filter drivers or encryption drivers. |

## 0x800xxxxx

Result codes that start with the digits 0x800 are also important to understand. These error codes indicate general operating system errors, and are not unique to the Windows upgrade process. Examples include timeouts, devices not functioning, and a process stopping unexpectedly.

See the following general troubleshooting procedures associated with a result code of 0x800xxxxx:

| Code | Mitigation | Cause |
| :---     |  :---  |  :--- |
| 80040005 - 0x20007     |  This error has more than one possible cause. Attempt [quick fixes](quick-fixes.md), and if not successful, [analyze log files](log-files.md#analyze-log-files) in order to determine the problem and solution.  |   An unspecified error occurred with a driver during the SafeOS phase.   |
| 0x80073BC3 - 0x20009<br>0x80070002 - 0x20009<br>0x80073B92 - 0x20009     |  These errors occur during partition analysis and validation, and can be caused by the presence of multiple system partitions. For example, if you installed a new system drive but left the previous system drive connected, this can cause a conflict. To resolve the errors, disconnect or temporarily disable drives that contain the unused system partition. You can reconnect the drive after the upgrade has completed. Alternatively, you can delete the unused system partition.  |   The requested system device cannot be found, there is a sharing violation, or there are multiple devices matching the identification criteria.   |
| 800704B8 - 0x3001A   |  Disable or uninstall non-Microsoft antivirus applications, disconnect all unnecessary devices, and perform a [clean boot](https://support.microsoft.com/kb/929135).  |   An extended error has occurred during the first boot phase.   |
| 8007042B - 0x4000D    |  [Analyze log files](log-files.md#analyze-log-files) in order to determine the file, application, or driver that is not able to be migrated. Disconnect, update, remove, or replace the device or object.  |   The installation failed during the second boot phase while attempting the MIGRATE_DATA operation.<br>This issue can occur due to file system, application, or driver issues.   |
| 8007001F - 0x3000D    |  [Analyze log files](log-files.md#analyze-log-files) in order to determine the files or registry entries that are blocking data migration.<br>&nbsp;<br>This error can be due to a problem with user profiles. It can occur due to corrupt registry entries under **HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ProfileList** or invalid files in the **\\Users** directory.<br>&nbsp;<br>**Note**: If a previous upgrade did not complete, invalid profiles might exist in the **Windows.old\\Users** directory.<br>&nbsp;<br>To repair this error, ensure that deleted accounts are not still present in the Windows registry and that files under the \\Users directory are valid. Delete the invalid files or user profiles that are causing this error. The specific files and profiles that are causing the error will be recorded in the Windows setup log files.|   The installation failed in the FIRST_BOOT phase with an error during MIGRATE_DATA operation.   |
| 8007001F - 0x4000D     |  [Analyze log files](log-files.md#analyze-log-files) in order to determine the device that is not functioning properly. Disconnect, update, or replace the device.  |   General failure, a device attached to the system is not functioning.   |
| 8007042B - 0x4001E   |  This error has more than one possible cause. Attempt [quick fixes](quick-fixes.md), and if not successful, [analyze log files](log-files.md#analyze-log-files) in order to determine the problem and solution.  |   The installation failed during the second boot phase while attempting the PRE_OOBE operation.   |

## Other result codes

<br /><table>

<tr>
<td BGCOLOR="#a0e4fa"><font color="#000000"><b>Error code</b></font></td>
<td BGCOLOR="#a0e4fa"><font color="#000000"><b>Cause</b></font></td>
<td BGCOLOR="#a0e4fa"><font color="#000000"><b>Mitigation</b></font></td>
</tr>

<tr>
<td>0xC1800118</td>
<td>WSUS has downloaded content that it cannot use due to a missing decryption key.</td>
<td>See <a href="https://blogs.technet.microsoft.com/wsus/2016/09/21/resolving-error-0xc1800118/" data-raw-source="[Steps to resolve error 0xC1800118](https://blogs.technet.microsoft.com/wsus/2016/09/21/resolving-error-0xc1800118/)">Steps to resolve error 0xC1800118</a> for information.</td>
</tr>

<tr>
<td>0xC1900200</td>
<td>Setup.exe has detected that the machine does not meet the minimum system requirements.</td>
<td>Ensure the system you are trying to upgrade meets the minimum system requirements. <br>See <a href="https://www.microsoft.com/windows/windows-10-specifications" data-raw-source="[Windows 10 specifications](https://www.microsoft.com/windows/windows-10-specifications)">Windows 10 specifications</a> for information.</td>
</tr>

<tr>
<td>0x80090011</td>
<td>A device driver error occurred during user data migration.</td>
<td>Contact your hardware vendor and get all the device drivers updated. It is recommended to have an active internet connection during upgrade process.
<br>Ensure that &quot;Download and install updates (recommended)&quot; is accepted at the start of the upgrade process.</td>
</tr>
<tr>
<td>0xC7700112</td>
<td>Failure to complete writing data to the system drive, possibly due to write access failure on the hard disk.</td>
<td>This issue is resolved in the latest version of Upgrade Assistant.
<br>Ensure that &quot;Download and install updates (recommended)&quot; is accepted at the start of the upgrade process.</td>
</tr>

<tr>
<td>0x80190001</td>
<td>An unexpected error was encountered while attempting to download files required for upgrade.</td>
<td>To resolve this issue, download and run the media creation tool. See <a href="https://www.microsoft.com/software-download/windows10" data-raw-source="[Download windows 10](https://www.microsoft.com/software-download/windows10)">Download windows 10</a>.
</td>
</tr>
<tr>
<td>0x80246007</td>
<td>The update was not downloaded successfully.</td>
<td>Attempt other methods of upgrading the operating system.<br>
Download and run the media creation tool. See <a href="https://www.microsoft.com/software-download/windows10" data-raw-source="[Download windows 10](https://www.microsoft.com/software-download/windows10)">Download windows 10</a>.
<br>Attempt to upgrade using .ISO or USB.<br>
<strong>Note</strong><br>Windows 10 Enterprise isn’t available in the media creation tool. For more information, go to the <a href="https://www.microsoft.com/licensing/servicecenter/default.aspx" data-raw-source="[Volume Licensing Service Center](https://www.microsoft.com/licensing/servicecenter/default.aspx)">Volume Licensing Service Center</a>.
</td>
</tr>
<tr>
<td>0x80244018</td>
<td>Your machine is connected through a proxy server.</td>
<td>Make sure Automatically Detect Settings is selected in internet options. (<b>Control Panel</b> > <b>Internet Options</b> > <b>Connections</b> > <b>LAN Settings</b>).
</td>
</tr>
<tr>
<td>0xC1900201</td>
<td>The system did not pass the minimum requirements to install the update.</td>
<td>Contact the hardware vendor to get the latest updates.</td>
</tr>
<tr>
<td>0x80240017</td>
<td>The upgrade is unavailable for this edition of Windows.</td>
<td>Administrative policies enforced by your organization might be preventing the upgrade. Contact your IT administrator.</td>
</tr>

<tr>
<td>0x80070020</td>
<td>The existing process cannot access the file because it is being used by another process.</td>
<td>Use the MSCONFIG tool to perform a clean boot on the machine and then try to perform the update again. For more information, see <a href="https://support.microsoft.com/kb/929135" data-raw-source="[How to perform a clean boot in Windows](https://support.microsoft.com/kb/929135)">How to perform a clean boot in Windows</a>.</td>
</tr>
<tr>
<td>0x80070522</td>
<td>The user doesn’t have required privilege or credentials to upgrade.</td>
<td>Ensure that you have signed in as a local administrator or have local administrator privileges.</td>
</tr>
<tr>
<td>0xC1900107</td>
<td>A cleanup operation from a previous installation attempt is still pending and a system reboot is required in order to continue the upgrade.
</td>
<td>Restart the device and run setup again. If restarting the device does not resolve the issue, then use the Disk Cleanup utility and clean up the temporary files as well as the System files. For more information, see <a href="https://support.microsoft.com/instantanswers/8fef4121-711b-4be1-996f-99e02c7301c2/disk-cleanup-in-windows-10" data-raw-source="[Disk cleanup in Windows 10](https://support.microsoft.com/instantanswers/8fef4121-711b-4be1-996f-99e02c7301c2/disk-cleanup-in-windows-10)">Disk cleanup in Windows 10</a>.</td>
</tr>
<tr>
<td>0xC1900209</td>
<td>The user has chosen to cancel because the system does not pass the compatibility scan to install the update. Setup.exe will report this error when it can upgrade the machine with user data but cannot migrate installed applications.</td>
<td>Incompatible software is blocking the upgrade process. Uninstall the application and try the upgrade again. See <a href="https://blogs.technet.microsoft.com/mniehaus/2015/08/23/windows-10-pre-upgrade-validation-using-setup-exe/" data-raw-source="[Windows 10 Pre-Upgrade Validation using SETUP.EXE](https://blogs.technet.microsoft.com/mniehaus/2015/08/23/windows-10-pre-upgrade-validation-using-setup-exe/)">Windows 10 Pre-Upgrade Validation using SETUP.EXE</a> for more information.
<br>You can also download the <a href="https://go.microsoft.com/fwlink/p/?LinkId=526740">Windows Assessment and Deployment Kit (ADK) for Windows 10</a> and install Application Compatibility Tools.
</td>
</tr>

<tr>
<td>0x8007002 </td>
<td>This error is specific to upgrades using System Center 2012 Configuration Manager R2 SP1 CU3 (5.00.8238.1403)</td>
<td>Analyze the SMSTS.log and verify that the upgrade is failing on &quot;Apply Operating system&quot; Phase: Error 80072efe DownloadFileWithRanges() failed. 80072efe. ApplyOperatingSystem (0x0760)
<br>The error 80072efe means that the connection with the server was terminated abnormally.
<br>To resolve this issue, try the OS Deployment test on a client in same VLAN as the Configuration Manager server. Check the network configuration for random client-server connection issues happening on the remote VLAN.
</td>
</tr>

<tr>
<td>0x80240FFF </td>
<td>Occurs when update synchronization fails. It can occur when you are using Windows Server Update Services on its own or when it is integrated with Microsoft Endpoint Configuration Manager. If you enable update synchronization before you install <a href="https://support.microsoft.com/help/3095113/">hotfix 3095113</a>, WSUS doesn&#39;t recognize the Upgrades classification and instead treats the upgrade like a regular update.</td>
<td> You can prevent this by installing <a href="https://blogs.technet.microsoft.com/wsus/2015/12/03/important-update-for-wsus-4-0-kb-3095113/">hotfix 3095113</a> before you enable update synchronization. However, if you have already run into this problem, do the following:
<ol>
<li>Disable the Upgrades classification.</li>
<li>Install hotfix 3095113.</li>
<li>Delete previously synched updates.</li>
<li>Enable the Upgrades classification.</li>
<li>Perform a full synch.</li>
</ol>
For detailed information on how to run these steps check out <a href="https://blogs.technet.microsoft.com/wsus/2016/01/29/how-to-delete-upgrades-in-wsus/">How to delete upgrades in WSUS</a>.</p>
</td>
</tr>

<tr>
<td>0x8007007E</td>
<td>Occurs when update synchronization fails because you do not have <a href="https://support.microsoft.com/help/3095113/">hotfix 3095113</a> installed before you enable update synchronization. Specifically, the CopyToCache operation fails on clients that have already downloaded the upgrade because Windows Server Update Services has bad metadata related to the upgrade. It can occur when you are using standalone Windows Server Update Services or when WSUS is integrated with Microsoft Endpoint Configuration Manager.</td>
<td> Use the following steps to repair Windows Server Update Services. You must run these steps on each WSUS server that synched metadata before you installed the hotfix.
<ol>
<li>Stop the Windows Update service. Sign in as a user with administrative privileges, and then do the following:
<ol>
<li>Open <b>Administrative Tools</b> from the Control Panel.</li>
<li>Double-click <b>Services</b>.</li>
<li>Find the <b>Windows Update</b> service, right-click it, and then select <b>Stop</b>. If prompted, enter your credentials.</li>
</ol>
</li>
<li>Delete all files and folders under c:\Windows\SoftwareDistribution\DataStore.</li>
<li>Restart the Windows Update service.</li>
</ol>
</td>
</tr>

</table>

## Other error codes

<br><table>

<tr><td BGCOLOR="#a0e4fa"><font color="#000000">Error Codes<td BGCOLOR="#a0e4fa"><font color="#000000">Cause<td BGCOLOR="#a0e4fa"><font color="#000000">Mitigation</td></tr>
<tr><td>0x80070003- 0x20007
<td>This is a failure during SafeOS phase driver installation.

<td><a href="https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations" data-raw-source="[Verify device drivers](https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations)">Verify device drivers</a> on the computer, and <a href="log-files.md#analyze-log-files" data-raw-source="[analyze log files](log-files.md#analyze-log-files)">analyze log files</a> to determine the problem driver.
</td></tr>
<tr><td>0x8007025D - 0x2000C
<td>This error occurs if the ISO file&#39;s metadata is corrupt.<td>&quot;Re-download the ISO/Media and re-attempt the upgrade.

Alternatively, re-create installation media the [Media Creation Tool](https://www.microsoft.com/software-download/windows10).

</td></tr>
<tr><td>0x80070490 - 0x20007<td>An incompatible device driver is present.

<td><a href="https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations" data-raw-source="[Verify device drivers](https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations)">Verify device drivers</a> on the computer, and <a href="log-files.md#analyze-log-files" data-raw-source="[analyze log files](log-files.md#analyze-log-files)">analyze log files</a> to determine the problem driver.

</td></tr>
<tr><td>0xC1900101 - 0x2000c
<td>An unspecified error occurred in the SafeOS phase during WIM apply. This can be caused by an outdated driver or disk corruption.
<td>Run checkdisk to repair the file system. For more information, see the <a href="quick-fixes.md" data-raw-source="[quick fixes](quick-fixes.md)">quick fixes</a> section in this guide.
<br>Update drivers on the computer, and select &quot;Download and install updates (recommended)&quot; during the upgrade process. Disconnect devices other than the mouse, keyboard and display.</td></tr>
<tr><td>0xC1900200 - 0x20008

<td>The computer doesn’t meet the minimum requirements to download or upgrade to Windows 10.

See <a href="https://www.microsoft.com/windows/windows-10-specifications" data-raw-source="[Windows 10 Specifications](https://www.microsoft.com/windows/windows-10-specifications)">Windows 10 Specifications</a> and verify the computer meets minimum requirements.

Review logs for [compatibility information](https://blogs.technet.microsoft.com/askcore/2016/01/21/using-the-windows-10-compatibility-reports-to-understand-upgrade-issues/).</td></tr>
<tr><td>0x80070004 - 0x3000D
<td>This is a problem with data migration during the first boot phase. There are multiple possible causes.

<td><a href="log-files.md#analyze-log-files" data-raw-source="[Analyze log files](log-files.md#analyze-log-files)">Analyze log files</a> to determine the issue.</td></tr>
<tr><td>0xC1900101 - 0x4001E
<td>Installation failed in the SECOND_BOOT phase with an error during PRE_OOBE operation.
<td>This is a generic error that occurs during the OOBE phase of setup. See the <a href="#0xc1900101" data-raw-source="[0xC1900101](#0xc1900101)">0xC1900101</a> section of this guide and review general troubleshooting procedures described in that section.</td></tr>
<tr><td>0x80070005 - 0x4000D
<td>The installation failed in the SECOND_BOOT phase with an error in during MIGRATE_DATA operation. This error indicates that access was denied while attempting to migrate data.
<td><a href="log-files.md#analyze-log-files" data-raw-source="[Analyze log files](log-files.md#analyze-log-files)">Analyze log files</a> to determine the data point that is reporting access denied.</td></tr>
<tr><td>0x80070004 - 0x50012
<td>Windows Setup failed to open a file.
<td><a href="log-files.md#analyze-log-files" data-raw-source="[Analyze log files](log-files.md#analyze-log-files)">Analyze log files</a> to determine the data point that is reporting access problems.</td></tr>
<tr><td>0xC190020e
<br>0x80070070 - 0x50011
<br>0x80070070 - 0x50012
<br>0x80070070 - 0x60000
<td>These errors indicate the computer does not have enough free space available to install the upgrade.
<td>To upgrade a computer to Windows 10, it requires 16 GB of free hard drive space for a 32-bit OS, and 20 GB for a 64-bit OS. If there is not enough space, attempt to <a href="https://support.microsoft.com/help/17421/windows-free-up-drive-space" data-raw-source="[free up drive space](https://support.microsoft.com/help/17421/windows-free-up-drive-space)">free up drive space</a> before proceeding with the upgrade.

> [!NOTE]  
> If your device allows it, you can use an external USB drive for the upgrade process. Windows setup will back up the previous version of Windows to a USB external drive. The external drive must be at least 8GB (16GB is recommended). The external drive should be formatted using NTFS.  Drives that are formatted in FAT32 may run into errors due to FAT32 file size limitations. USB drives are preferred over SD cards because drivers for SD cards are not migrated if the device does not support Connected Standby.
</td></tr>

</table>

## Modern setup errors

Also see the following sequential list of modern setup (mosetup) error codes with a brief description of the cause.

| Result code | Message  | Description |
| --- | --- | --- |
| 0XC1900100 | MOSETUP_E_VERSION_MISMATCH | An unexpected version of Setup Platform binaries was encountered. Please verify the package contents. |
| 0XC1900101 | MOSETUP_E_SETUP_PLATFORM | The Setup Platform has encountered an unspecified error. |
| 0XC1900102 | MOSETUP_E_SHUTDOWN_BLOCK | Unable to create or destroy the shutdown block message. |
| 0XC1900103 | MOSETUP_E_COMPAT_TIMEOUT | The compatibility issues were not resolved within the required time limit. |
| 0XC1900104 | MOSETUP_E_PROCESS_TIMEOUT | The installation process did not complete within the required time limit. |
| 0XC1900105 | MOSETUP_E_TEST_MODE | The installation process is being used in a test environment. |
| 0XC1900106 | MOSETUP_E_TERMINATE_PROCESS | The installation process was terminated. |
| 0XC1900107 | MOSETUP_E_CLEANUP_PENDING | A cleanup operation from a previous installation attempt is still pending. A system reboot is required. |
| 0XC1900108 | MOSETUP_E_REPORTING | An error has occurred and the result value must be consolidated for telemetry purposes. |
| 0XC1900109 | MOSETUP_E_COMPAT_TERMINATE | The installation process was terminated during the actionable compatibility phase. |
| 0XC190010a | MOSETUP_E_UNKNOWN_CMD_LINE | The installation process was launched with an unknown command-line argument. |
| 0XC190010b | MOSETUP_E_INSTALL_IMAGE_NOT_FOUND | The installation image was not found. |
| 0XC190010c | MOSETUP_E_AUTOMATION_INVALID | The provided automation information was invalid. |
| 0XC190010d | MOSETUP_E_INVALID_CMD_LINE | The installation process was launched with an invalid command-line argument. |
| 0XC190010e | MOSETUP_E_EULA_ACCEPT_REQUIRED | The installation process requires that the user accept the license agreement. |
| 0XC1900110 | MOSETUP_E_EULA_CANCEL | The user has chosen to cancel for license agreement. |
| 0XC1900111 | MOSETUP_E_ADVERTISE_CANCEL | The user has chosen to cancel for advertisement. |
| 0XC1900112 | MOSETUP_E_TARGET_DRIVE_NOT_FOUND | Could not find a target drive letter.  |
| 0XC1900113 | MOSETUP_E_EULA_DECLINED | The user has declined the license terms. |
| 0XC190011e | MOSETUP_E_FLIGHTING_BVT | The installation process has been halted for testing purposes. |
| 0XC190011f | MOSETUP_E_PROCESS_CRASHED | The installation process crashed. |
| 0XC1900120 | MOSETUP_E_EULA_TIMEOUT | The user has not accepted Eula within the required time limit. |
| 0XC1900121 | MOSETUP_E_ADVERTISE_TIMEOUT | The user has not accepted Advertisement within the required time limit. |
| 0XC1900122 | MOSETUP_E_DOWNLOADDISKSPACE_TIMEOUT | The download disk space issues were not resolved within the required time limit. |
| 0XC1900123 | MOSETUP_E_INSTALLDISKSPACE_TIMEOUT | The install disk space issues were not resolved within the required time limit. |
| 0XC1900124 | MOSETUP_E_COMPAT_SYSREQ_TIMEOUT | The minimum requirements compatibility issues were not resolved within the required time limit. |
| 0XC1900125 | MOSETUP_E_COMPAT_DOWNLOADREQ_TIMEOUT | The compatibility issues for download were not resolved within the required time limit. |
| 0XC1900126 | MOSETUP_E_GATHER_OS_STATE_SIGNATURE | The GatherOsState executable has invalid signature. |
| 0XC1900127 | MOSETUP_E_UNINSTALL_ALLOWED_ABORT | The user has chosen to abort Setup to keep Uninstall option active. |
| 0XC1900128 | MOSETUP_E_MISSING_TASK | The install cannot continue because a required task is missing. |
| 0XC1900129 | MOSETUP_E_UPDATEMEDIA_REQUESTED | A more up-to-date version of setup will be launched to continue installation
| 0XC190012f | MOSETUP_E_FINALIZE_ALREADY_REQUESTED | The install cannot continue because a finalize operation was already requested. |
| 0XC1900130 | MOSETUP_E_INSTALL_HASH_MISSING | The install cannot continue because the instance hash was not found. |
| 0XC1900131 | MOSETUP_E_INSTALL_HASH_MISMATCH | The install cannot continue because the instance hash does not match. |
| 0XC19001df | MOSETUP_E_DISK_FULL | The install cannot continue because the system is out of disk space. |
| 0XC19001e0 | MOSETUP_E_GATHER_OS_STATE_FAILED | The GatherOsState executable has failed to execute. |
| 0XC19001e1 | MOSETUP_E_PROCESS_SUSPENDED | The installation process was suspended. |
| 0XC19001e2 | MOSETUP_E_PREINSTALL_SCRIPT_FAILED | A preinstall script failed to execute or returned an error. |
| 0XC19001e3 | MOSETUP_E_PRECOMMIT_SCRIPT_FAILED | A precommit script failed to execute or returned an error. |
| 0XC19001e4 | MOSETUP_E_FAILURE_SCRIPT_FAILED | A failure script failed to execute or returned an error. |
| 0XC19001e5 | MOSETUP_E_SCRIPT_TIMEOUT | A script exceeded the timeout limit. |
| 0XC1900200 | MOSETUP_E_COMPAT_SYSREQ_BLOCK | The system does not pass the minimum requirements to install the update. |
| 0XC1900201 | MOSETUP_E_COMPAT_SYSREQ_CANCEL | The user has chosen to cancel because the system does not pass the minimum requirements to install the update. |
| 0XC1900202 | MOSETUP_E_COMPAT_DOWNLOADREQ_BLOCK | The system does not pass the minimum requirements to download the update. |
| 0XC1900203 | MOSETUP_E_COMPAT_DOWNLOADREQ_CANCEL | The user has chosen to cancel because the system does not pass the minimum requirements to download the update. |
| 0XC1900204 | MOSETUP_E_COMPAT_MIGCHOICE_BLOCK | The system does not pass the requirements for desired migration choice. |
| 0XC1900205 | MOSETUP_E_COMPAT_MIGCHOICE_CANCEL | The user has chosen to cancel because the system does not pass the requirements for desired migration choice. |
| 0XC1900206 | MOSETUP_E_COMPAT_DEVICEREQ_BLOCK | The system does not pass the device scan to install the update. |
| 0XC1900207 | MOSETUP_E_COMPAT_DEVICEREQ_CANCEL | The user has chosen to cancel because the system does not pass the device scan to install the update. |
| 0XC1900208 | MOSETUP_E_COMPAT_INSTALLREQ_BLOCK | The system does not pass the compat scan to install the update. |
| 0XC1900209 | MOSETUP_E_COMPAT_INSTALLREQ_CANCEL | The user has chosen to cancel because the system does not pass the compat scan to install the update. |
| 0XC190020a | MOSETUP_E_COMPAT_RECOVERYREQ_BLOCK | The system does not pass the minimum requirements to recover Windows. |
| 0XC190020b | MOSETUP_E_COMPAT_RECOVERYREQ_CANCEL | The user has chosen to cancel because the system does not pass the minimum requirements to recover Windows. |
| 0XC190020c | MOSETUP_E_DOWNLOADDISKSPACE_BLOCK | The system does not pass the disk space requirements to download the payload. |
| 0XC190020d | MOSETUP_E_DOWNLOADDISKSPACE_CANCEL | The user has chosen to cancel as the device does not have enough disk space to download. |
| 0XC190020e | MOSETUP_E_INSTALLDISKSPACE_BLOCK | The system does not pass the disk space requirements to install the payload. |
| 0XC190020f | MOSETUP_E_INSTALLDISKSPACE_CANCEL | The user has chosen to cancel as the device does not have enough disk space to install. |
| 0XC1900210 | MOSETUP_E_COMPAT_SCANONLY | The user has used the setup.exe command line to do scanonly, not to install the OS. |
| 0XC1900211 | MOSETUP_E_DOWNLOAD_UNPACK_DISKSPACE_BLOCK | The system does not pass the disk space requirements to download and unpack media. |
| 0XC1900212 | MOSETUP_E_DOWNLOAD_UNPACK_DISKSPACE_MULTIARCH_BLOCK | The system does not pass the disk space requirements to download and unpack multi-architecture media. |
| 0XC1900213 | MOSETUP_E_NO_OFFER_FOUND | There was no offer found that matches the required criteria. |
| 0XC1900214 | MOSETUP_E_UNSUPPORTED_VERSION | This version of the tool is not supported. |
| 0XC1900215 | MOSETUP_E_NO_MATCHING_INSTALL_IMAGE | Could not find an install image for this system. |
| 0XC1900216 | MOSETUP_E_ROLLBACK_PENDING | Found pending OS rollback operation. |
| 0XC1900220 | MOSETUP_E_COMPAT_REPORT_NOT_DISPLAYED | The compatibility report cannot be displayed due to a missing system component. |
| 0XC1900400 | MOSETUP_E_UA_VERSION_MISMATCH | An unexpected version of Update Agent client was encountered. |
| 0XC1900401 | MOSETUP_E_UA_NO_PACKAGES_TO_DOWNLOAD | No packages to be downloaded. |
| 0XC1900402 | MOSETUP_E_UA_UPDATE_CANNOT_BE_MERGED | No packages to be downloaded. |
| 0XC1900403 | MOSETUP_E_UA_CORRUPT_PAYLOAD_FILES | Payload files were corrupt. |
| 0XC1900404 | MOSETUP_E_UA_BOX_NOT_FOUND | The installation executable was not found. |
| 0XC1900405 | MOSETUP_E_UA_BOX_CRASHED | The installation process terminated unexpectedly. |

## Related topics

- [Windows 10 FAQ for IT professionals](https://technet.microsoft.com/windows/dn798755.aspx)
- [Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)
- [Windows 10 Specifications](https://www.microsoft.com/windows/Windows-10-specifications)
- [Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/home?category=Windows10ITPro)
- [Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
