---
title: Windows Hello errors during PIN creation (Windows 10)
description: When you set up Windows Hello in Windows 10, you may get an error during the Create a work PIN step.
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
<th align="left">Hex</th>
<th align="left">Cause</th>
<th align="left">Mitigation</th>
</tr>
</thead>
<tbody>

<tr class="even">
<td align="left">0xC1900200</td>
<td align="left">This error would come up during the first phase of the upgrade process which means setup.exe has detected the machine does not have the minimum system requirements.</td>
<td align="left">Ensure the system you are trying to upgrade meets the minimum system requirements. Refer to https://www.microsoft.com/en-us/windows/windows-10-specifications  for more details.</td>
</tr>

<tr class="odd">
<td align="left">0x8007002C - 0x4000D</td>
<td align="left">User cancelled an interactive dialog</td>
<td align="left">User will be asked to try again</td>
</tr>
<tr class="even">
<td align="left">0x80090011</td>
<td align="left">This error is generally caused by device drivers during the migration process of user data.</td>
<td align="left">Contact your hardware vendor and get all the device drivers updated. It is recommended to have an active internet connection during upgrade process so that it can get the Dynamic Updates for the OS - ensure you select the option that says: “Download and install updates (recommended)”.</td>
</tr>
<tr class="odd">
<td align="left">0xC7700112</td>
<td align="left">This error occurs when Windows fails to write the complete data on the system drive, which would fail due to write access on the Hard Disk.</td>
<td align="left">This issue is resolved in the latest Upgrade Assistant exe (BUG 8153646). We would not see this issue anymore on any upgrades after July 14, 2016.</td>
</tr>
<tr class="even">
<td align="left">0xC1900101 - 0x30018</td>
<td align="left">This error comes up when a device driver stops responding to the setup.exe while the upgrade is in progress.</td>
<td align="left">To resolve this issue, disconnect any additional devices that are connected to the system other than the mouse, keyboard and display.
Contact your hardware vendor and get all the device drivers updated. It is recommended to have an active internet connection during upgrade process so that it can get the Dynamic Updates for the OS.
</td>
</tr>
<tr class="odd">
<td align="left">0x80190001</td>
<td align="left">This error means that we encountered an unexpected error when attempting to download the files required for upgrade.</td>
<td align="left">This error comes up when we initiate the setup and there is an issue while downloading the Windows 10 media via the Windows update portal.
To resolve this issue:
1.	1. Download the ISO using Media Creation Tool, Refer: https://www.microsoft.com/en-us/software-download/windows10
2.	Initiate the upgrade from the USB/DVD/ISO"
</td>
</tr><tr class="even">
<td align="left">0xC1900101 - 0x20017</td>
<td align="left">This error occurs because a driver has caused an illegal operation and Windows was not able to migrate the driver which resulted in a Rollback of the operating system.</td>
<td align="left">To resolve this issue:
1.	Make sure all that drivers are updated.
2.	Open the Setuperr.log and Setupact.log files under the %windir%\Panther directory, and then locate the problem drivers. Refer: Understanding Failures and Log Files
3.	Update or uninstall the problem drivers.
</td>
</tr>
<tr class="even">
<td align="left">0x80246007</td>
<td align="left">This error occurs if the update was not downloaded successfully on the machine.</td>
<td align="left">In order to mitigate this error, you need to pursue a different way of upgrade which would be:
If you are using Upgrade this PC option in media creation tool, we recommend you try other methods such as a USB Flash Drive or Downloading ISO files to upgrade your PC.
Solution 1: Creating USB Flash Drive.
1.	Download Windows Media Creation tool.
2.	Run the tool and you will be asked to accept the T&C before proceeding.
3.	Now you’ll get the following options. Select option b.
a.	Upgrade this PC 
b.	Create Installation Media for another PC.
4.	Select Language, Architecture, and Edition. In this case, it will be done automatically.
5.	You’ll again get two options. Select option a. Ensure your Pen drive has more than 4gb of free space.
a.	USB Flash Drive 
b.	ISO file. Select USB Flash Drive.
6.	Click next, if your pen drive is connected, Select the drive and Click next.
The tool will Download Windows 10 on your USB and after finishing you can now use the drive to upgrade.

Solution 2: Downloading ISO file
If the above method fails use this second solution to fix it is:  
1.	Download Windows Media Creation tool.
2.	Run the tool and you will be asked to accept the T&C before proceeding.
3.	Now you’ll get the following options. Select option b.
a.	Upgrade this PC 
b.	Create Installation Media for another PC.
4.	Select Language, Architecture, and Edition. In this case, it will be done automatically.
5.	You’ll again get two options. Select option b. Ensure your Pen drive has more than 4gb of free space.
a.	USB Flash Drive 
b.	ISO file. Select USB Flash Drive.
6.	Follow the instructions given on the screen until it finishes downloading.
7.	Insert a Blank DVD and burn the disc image.
8.	Run the setup from the DVD.
9.	If you want to install Windows 10 directly from the ISO file without using a DVD or flash drive, you can do so by mounting the ISO file. 
Navigate to the Downloaded File, Right Click it and Click On MOUNT.
10.	Double-click setup.exe to start Windows 10 setup.

Windows 10 Enterprise isn’t available in the media creation tool. For more info, go to the Volume Licensing Service Center.
</td>
</tr>
<tr class="odd">
<td align="left">0xC1900201</td>
<td align="left">This error occurs because the system does not pass the minimum requirements to install the update since the user canceled the upgrade process.</td>
<td align="left">Please contact the Hardware Vendor to get the latest Firmware/BIOS/Driver updates for all the hardware. Then, try to run the upgrade again.</td>
</tr>
<tr class="even">
<td align="left">0x80240017</td>
<td align="left">This error indicates that the upgrade is unavailable for the edition of Windows that's running on the computer.</td>
<td align="left">If your system is managed by Enterprise, your IT administrators may be currently preventing you to upgrade to the newer version of Windows 10. Please contact your IT administrator to upgrade to Windows 10.</td>
</tr>
<tr class="odd">
<td align="left">0xC1900101 - 0x4000D</td>
<td align="left">This error occurs if there’s a driver configuration issue during Windows Setup process.</td>
<td align="left"><p>When this error occurs, the setup.exe would have generated a crash in the background and would initiate a rollback to the previous operating system. 
In order to fix this issue, you need to troubleshoot what the exact crash was and what was the stop code. You need to review the rollback log, that is located at: C:\$Windows.~BT\Sources\Panther folder and you should notice something similar to the following:
Info SP     Crash 0x0000007E detected
Info SP       Module name           : 
Info SP       Bugcheck parameter 1  : 0xFFFFFFFFC0000005
Info SP       Bugcheck parameter 2  : 0xFFFFF8015BC0036A
Info SP       Bugcheck parameter 3  : 0xFFFFD000E5D23728
Info SP       Bugcheck parameter 4  : 0xFFFFD000E5D22F40
Info SP     Cannot recover the system.
Info SP     Rollback: Showing splash window with restoring text: Restoring your previous version of Windows.

Usually, there’s a dump file for the crash to analyze. If you are not equipped to debug the dump, you should use some basic troubleshooting techniques:
•	Make sure you have enough disk space.
•	If a driver is identified in the bug check message, disable the driver or check with the manufacturer for driver updates.
•	Try changing video adapters.
•	Check with your hardware vendor for any BIOS updates.
•	Disable BIOS memory options such as caching or shadowing.
</p></td>
</tr>
<tr class="even">
<td align="left">0x80070020</td>
<td align="left">This error means that the existing process cannot access the file because it is being used by another process.</td>
<td align="left">Use the MSCONFIG tool to perform a clean boot on the machine and then try to perform the update again. Refer: How to perform a clean boot in Windows</td>
</tr>
<tr class="odd">
<td align="left">0x80070522</td>
<td align="left">This error occurs if the user doesn’t have required privilege or credentials to upgrade.</td>
<td align="left">Please ensure that you have logged in as a local administrator or have local administrator privileges and attempt to run the upgrade again.</td>
</tr>
<tr class="even">
<td align="left">0xC1900107</td>
<td align="left">This error means that a cleanup operation from a previous installation attempt is still pending and a system reboot is required in order to continue the upgrade. 
This error occurs when Windows Setup or Windows Update is tried multiple times and there is a pending reboot operation.
</td>
<td align="left">The only option to get past this error is to reboot the device and then try to run setup again. If restarting device does not resolve the issue, then use the Disk Cleanup utility and cleanup the temporary as well as the System files and then continue the process. Refer: Disk cleanup in Windows 10</td>
</tr>
<tr class="odd">
<td align="left">0xC1900209</td>
<td align="left">This error occurs when the user has chosen to cancel because the system does not pass the compatibility scan to install the update. The Setup.exe will report this error when it can upgrade the machine with user data but cannot upgrade the apps installed.</td>
<td align="left">This error means that an incompatible app/software installed on your PC is blocking the upgrade process from completing. Check to make sure that any incompatible apps are uninstalled and then try updating again. 
Refer: Windows 10 Pre-Upgrade Validation using SETUP.EXE
You could use "start /wait setup.exe /Auto Upgrade /Quiet /NoReboot /DynamicUpdate Disable /Compat ScanOnly" from a command prompt,
 and then "echo %errorlevel%" to see the return code.

You can also download the latest version from the Windows Assessment and Deployment Kit (ADK) for Windows 10 and install Application Compatibility Tools.
</td>
</tr>
<tr class="even">
<td align="left">0xC1900101 - 0x40017</td>
<td align="left">This error occurs when the Windows 10 upgrade fails after the second reboot, which is most like to be caused by a faulty driver like Anti-Virus filter drivers, Encryption drivers etc.</td>
<td align="left">​1.	Clean boot into Windows, and then attempt the upgrade to Windows 10.
Refer: How to perform a clean boot in Windows
2.	During upgrade ensure you select the option that says: “Download and install updates (recommended)”
</td>
</tr>
<tr class="odd">
<td align="left">display is not compatible</td>
<td align="left">This error occurs when the setup.exe checks compatibility of the hardware on the system and finds that the display card installed is not compatible with Windows 10.</td>
<td align="left">In order to continue the setup, uninstall display adapter by following these steps:

1.	Press Windows key + R
2.	Type: devmgmt.msc
3.	Expand: Display adapters 
4.	Right click listed Display Adapter and click Uninstall

Start upgrade setup again. When setup completes successfully, install the latest driver updates for device through Windows Update or from the computer manufacturers website using compatibility mode if necessary.
</td>
</tr>
<tr class="even">
<td align="left">0x8007002 </td>
<td align="left">​This error usually happens when upgrading to Windows 10 (1511) through SCCM 2012 R2 SP1 CU3 (5.00.8238.1403)</td>
<td align="left">By analyzing the SMSTS.log, one could notice the upgrade is failing on "Apply Operating system" Phase:
Error 80072efe DownloadFileWithRanges() failed. 80072efe. ApplyOperatingSystem (0x0760)

This error 80072efe means: The connection with the server was terminated abnormally.

To resolve this issue, try the OS Deployment test on a client in same vLAN where the SCCM server is located. Check the network configuration for random Client server connection issue happening on other VLAN.
</td>
</tr>
<tr class="odd">
<td align="left">Error 800705B4: This operation returned because the timeout period expired.</td>
<td align="left">The reason for the task sequence to failed is due to time out issue, which is set by the task sequence limitation to 180 mins of run time. This also caused the SCCM client to be corrupted.</td>
<td align="left">Reviewing SMSTS.log file, shows the following error:
Command line execution failed (800705B4) TSManager 3/30/2016 10:11:29 PM 8920 (0x22D8)
Failed to run the action: Upgrade Windows.

To resolve this issue, increased the default task sequence run time and change the task sequence to have the content downloaded locally prior install.
</td>

</tbody>
</table>
 


## Appendix A: Less common errors

                                                      |
 

## Related topics

•	Windows 10 FAQ for IT professionals
•	Windows 10 Enterprise system requirements
•	Windows 10 IT pro forums
