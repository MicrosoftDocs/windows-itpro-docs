---
title: Resolve common Windows 10 upgrade errors
description: Resolve common Windows 10 upgrade errors
ms.assetid: DFEFE22C-4FEF-4FD9-BFC4-9B419C339502
keywords: deploy, error, troubleshoot, windows, 10
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
localizationpriority: high
---

# Resolve common Windows 10 upgrade errors

**Applies to**
-   Windows 10

Some information about this topic

## An intro topic

Maybe an image here

- image -

## Some troubleshooting information

Blah blah yadda yadda

<table>

<thead>
<tr class="header">
<th BGCOLOR="#a0e4fa" align="left">Error code</th>
<th BGCOLOR="#a0e4fa" align="left">Cause</th>
<th BGCOLOR="#a0e4fa" align="left">Mitigation</th>
</tr>
</thead>
<tbody>

<tr class="even">
<td align="left">0xC1900200</td>
<td align="left">During the first phase of the upgrade process, setup.exe has detected that the machine does not meet the minimum system requirements.</td>
<td align="left">Ensure the system you are trying to upgrade meets the minimum system requirements. See [Windows 10 specifications](https://www.microsoft.com/en-us/windows/windows-10-specifications)  for information.</td>
</tr>

<tr class="odd">
<td align="left">0x8007002C - 0x4000D</td>
<td align="left">The user cancelled an interactive dialog.</td>
<td align="left">Try the process again again.</td>
</tr>
<tr class="even">
<td align="left">0x80090011</td>
<td align="left">A device driver error occurred during user data migration.</td>
<td align="left">Contact your hardware vendor and get all the device drivers updated. It is recommended to have an active internet connection during upgrade process. Ensure that “Download and install updates (recommended)” is accepted at the start of the upgrade process.</td>
</tr>
<tr class="odd">
<td align="left">0xC7700112</td>
<td align="left">Failure to complete writing data to the system drive, possibly due to write access failure on the hard disk.</td>
<td align="left">This issue is resolved in the latest version of Upgrade Assistant. Ensure that “Download and install updates (recommended)” is accepted at the start of the upgrade process.</td>
</tr>
<tr class="even">
<td align="left">0xC1900101 - 0x30018</td>
<td align="left">A device driver has stopped responding to setup.exe during the upgrade process.</td>
<td align="left">Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display. Contact your hardware vendor to obtain updated device drivers. Ensure that “Download and install updates (recommended)” is accepted at the start of the upgrade process.
</td>
</tr>
<tr class="odd">
<td align="left">0x80190001</td>
<td align="left">An unexpected error was encountered while attempting to download files required for upgrade.</td>
<td align="left">To resolve this issue, download and run the media creation tool. See [Download windows 10](https://www.microsoft.com/en-us/software-download/windows10).
</td>
</tr><tr class="even">
<td align="left">0xC1900101 - 0x20017</td>
<td align="left">A driver has caused an illegal operation and Windows was not able to migrate the driver, resulting in a rollback of the operating system.</td>
<td align="left">To resolve this issue:<BR>
1.	Make sure all that drivers are updated.
2.	Open the Setuperr.log and Setupact.log files under the %windir%\Panther directory, and then locate the problem drivers. Refer: [Understanding Failures and Log Files](https://technet.microsoft.com/en-us/library/ee851579.aspx)
3.	Update or uninstall the problem drivers.
</td>
</tr>
<tr class="even">
<td align="left">0x80246007</td>
<td align="left">The update was not downloaded successfully.</td>
<td align="left">Attempt other methods of upgrading. Download and run the media creation tool. See [Download windows 10](https://www.microsoft.com/en-us/software-download/windows10). Attempt to upgrade using .ISO or USB.<BR>
**Note**: Windows 10 Enterprise isn’t available in the media creation tool. For more information, go to the [Volume Licensing Service Center](https://www.microsoft.com/licensing/servicecenter/default.aspx).
</td>
</tr>
<tr class="odd">
<td align="left">0xC1900201</td>
<td align="left">The system did not pass the minimum requirements to install the update.</td>
<td align="left">Contact the hardware vendor to get the latest updates.</td>
</tr>
<tr class="even">
<td align="left">0x80240017</td>
<td align="left">The upgrade is unavailable for this edition of Windows.</td>
<td align="left">Administrative policies enforced by your organization might be preventing the upgrade. Contact your IT administrator.</td>
</tr>
<tr class="odd">
<td align="left">0xC1900101 - 0x4000D</td>
<td align="left">A driver configuration issue occurred during the Windows setup process and a rollback occurred.</td>
<td align="left"><p>Review the rollback log and determine the stop code. The rollback log is located in the C:\$Windows.~BT\Sources\Panther folder.  Look for text similar to the following:

```
Info SP     Crash 0x0000007E detected
Info SP       Module name           : 
Info SP       Bugcheck parameter 1  : 0xFFFFFFFFC0000005
Info SP       Bugcheck parameter 2  : 0xFFFFF8015BC0036A
Info SP       Bugcheck parameter 3  : 0xFFFFD000E5D23728
Info SP       Bugcheck parameter 4  : 0xFFFFD000E5D22F40
Info SP     Cannot recover the system.
Info SP     Rollback: Showing splash window with restoring text: Restoring your previous version of Windows.
```

Typically there is a a dump file for the crash to analyze. If you are not equipped to debug the dump, then attempt the following basic troubleshooting procedures:<BR>
    - Make sure you have enough disk space.<BR>
    - If a driver is identified in the bug check message, disable the driver, or check with the manufacturer for driver updates.<BR>
    - Try changing video adapters.<BR>
    - Check with your hardware vendor for any BIOS updates.<BR>
    - Disable BIOS memory options such as caching or shadowing.
</p></td>
</tr>
<tr class="even">
<td align="left">0x80070020</td>
<td align="left">The existing process cannot access the file because it is being used by another process.</td>
<td align="left">Use the MSCONFIG tool to perform a clean boot on the machine and then try to perform the update again. See [How to perform a clean boot in Windows](https://support.microsoft.com/en-us/kb/929135) for more information.</td>
</tr>
<tr class="odd">
<td align="left">0x80070522</td>
<td align="left">The user doesn’t have required privilege or credentials to upgrade.</td>
<td align="left">Ensure that you have signed in as a local administrator or have local administrator privileges.</td>
</tr>
<tr class="even">
<td align="left">0xC1900107</td>
<td align="left">A cleanup operation from a previous installation attempt is still pending and a system reboot is required in order to continue the upgrade.
</td>
<td align="left">Reboot the device and run setup again. If restarting device does not resolve the issue, then use the Disk Cleanup utility and cleanup the temporary as well as the System files. See [Disk cleanup in Windows 10](https://support.microsoft.com/en-us/instantanswers/8fef4121-711b-4be1-996f-99e02c7301c2/disk-cleanup-in-windows-10) for more information.</td>
</tr>
<tr class="odd">
<td align="left">0xC1900209</td>
<td align="left">The user has chosen to cancel because the system does not pass the compatibility scan to install the update. Setup.exe will report this error when it can upgrade the machine with user data but cannot migrate installed applications.</td>
<td align="left">Incompatible software is blocking the upgrade process. Uninstall the application and try the upgrade again. See [Windows 10 Pre-Upgrade Validation using SETUP.EXE](https://blogs.technet.microsoft.com/mniehaus/2015/08/23/windows-10-pre-upgrade-validation-using-setup-exe/) for more information.

You can also download the [Windows Assessment and Deployment Kit (ADK) for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=526740) and install Application Compatibility Tools.
</td>
</tr>
<tr class="even">
<td align="left">0xC1900101 - 0x40017</td>
<td align="left">Windows 10 upgrade fails after the second reboot, which is most like to be caused by a faulty driver, for example antivirus filter drivers or encryption drivers.</td>
<td align="left">​Clean boot into Windows, and then attempt the upgrade to Windows 10. See [How to perform a clean boot in Windows](https://support.microsoft.com/en-us/kb/929135) for more information.

<BR>During upgrade, ensure you select the option to “Download and install updates (recommended).”
</td>
</tr>
<tr class="odd">
<td align="left">display is not compatible</td>
<td align="left">The display card installed is not compatible with Windows 10.</td>
<td align="left">Uninstall the display adapter and start the upgrade again. When setup completes successfully, install the latest display adapter driver using Windows Update or by downloading from the computer manufacturers website. Use compatibility mode if necessary.
</td>
</tr>
<tr class="even">
<td align="left">0x8007002 </td>
<td align="left">This error is specific to upgrades using System Center Configuration Manager 2012 R2 SP1 CU3 (5.00.8238.1403)</td>
<td align="left">Analyze the SMSTS.log and verify that the upgrade is failing on "Apply Operating system" Phase: Error 80072efe DownloadFileWithRanges() failed. 80072efe. ApplyOperatingSystem (0x0760)

The error 80072efe means that the connection with the server was terminated abnormally.

To resolve this issue, try the OS Deployment test on a client in same VLAN as the Configuration Manager server. Check the network configuration for random client-server connection issues happening on the remote VLAN.
</td>
</tr>
<tr class="odd">
<td align="left">Error 800705B4: This operation returned because the timeout period expired.</td>
<td align="left">A time out issue set by the task sequence limitation to 180 mins of run time. This can also occur if the System Center client is corrupted.</td>
<td align="left">Review the SMSTS.log file and verify the following error is displayed:<BR>
Command line execution failed (800705B4) TSManager 3/30/2016 10:11:29 PM 8920 (0x22D8)
Failed to run the action: Upgrade Windows.

To resolve this issue, increase the default task sequence run time and change the task sequence to have the content downloaded locally prior to installation.
</td>

</tbody>
</table>
 


## Appendix A: Less common errors

                                                      |
 

## Related topics

•	Windows 10 FAQ for IT professionals
•	Windows 10 Enterprise system requirements
•	Windows 10 IT pro forums
