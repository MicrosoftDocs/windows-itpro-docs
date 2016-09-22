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

Some text here

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
<td align="left">Setup.exe has detected that the machine does not meet the minimum system requirements.</td>
<td align="left">Ensure the system you are trying to upgrade meets the minimum system requirements. <P>See [Windows 10 specifications](https://www.microsoft.com/en-us/windows/windows-10-specifications)  for information.</td>
</tr>

<tr class="odd">
<td align="left">0x8007002C - 0x4000D</td>
<td align="left">The user cancelled an interactive dialog.</td>
<td align="left">Start the upgrade process again again.</td>
</tr>
<tr class="even">
<td align="left">0x80090011</td>
<td align="left">A device driver error occurred during user data migration.</td>
<td align="left">Contact your hardware vendor and get all the device drivers updated. It is recommended to have an active internet connection during upgrade process. 
<P>Ensure that “Download and install updates (recommended)” is accepted at the start of the upgrade process.</td>
</tr>
<tr class="odd">
<td align="left">0xC7700112</td>
<td align="left">Failure to complete writing data to the system drive, possibly due to write access failure on the hard disk.</td>
<td align="left">This issue is resolved in the latest version of Upgrade Assistant. 
<P>Ensure that “Download and install updates (recommended)” is accepted at the start of the upgrade process.</td>
</tr>
<tr class="even">
<td align="left">0xC1900101 - 0x30018</td>
<td align="left">A device driver has stopped responding to setup.exe during the upgrade process.</td>
<td align="left">Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display. Contact your hardware vendor to obtain updated device drivers. 
<P>Ensure that “Download and install updates (recommended)” is accepted at the start of the upgrade process.
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
1.	Make sure all that drivers are updated.<BR>
2.	Open the Setuperr.log and Setupact.log files under the %windir%\Panther directory, and then locate the problem drivers. Refer: [Understanding Failures and Log Files](https://technet.microsoft.com/en-us/library/ee851579.aspx)<BR>
3.	Update or uninstall the problem drivers.
</td>
</tr>
<tr class="even">
<td align="left">0x80246007</td>
<td align="left">The update was not downloaded successfully.</td>
<td align="left">Attempt other methods of upgrading the operatign system.<BR>
Download and run the media creation tool. See [Download windows 10](https://www.microsoft.com/en-us/software-download/windows10). 
<BR>Attempt to upgrade using .ISO or USB.<BR>
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
<td align="left"><p>Review the rollback log and determine the stop code. The rollback log is located in the **C:\$Windows.~BT\Sources\Panther** folder.  Look for text similar to the following:


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

<P>You can also download the [Windows Assessment and Deployment Kit (ADK) for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=526740) and install Application Compatibility Tools.
</td>
</tr>
<tr class="even">
<td align="left">0xC1900101 - 0x40017</td>
<td align="left">Windows 10 upgrade fails after the second reboot, which is most like to be caused by a faulty driver, for example antivirus filter drivers or encryption drivers.</td>
<td align="left">​Clean boot into Windows, and then attempt the upgrade to Windows 10. See [How to perform a clean boot in Windows](https://support.microsoft.com/en-us/kb/929135) for more information.

<P>Ensure you select the option to “Download and install updates (recommended).”
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

<P>The error 80072efe means that the connection with the server was terminated abnormally.

<P>To resolve this issue, try the OS Deployment test on a client in same VLAN as the Configuration Manager server. Check the network configuration for random client-server connection issues happening on the remote VLAN.
</td>
</tr>
<tr class="odd">
<td align="left">Error 800705B4: This operation returned because the timeout period expired.</td>
<td align="left">A time out issue set by the task sequence limitation to 180 mins of run time. This can also occur if the System Center client is corrupted.</td>
<td align="left">Review the SMSTS.log file and verify the following error is displayed:<BR>
Command line execution failed (800705B4) TSManager 3/30/2016 10:11:29 PM 8920 (0x22D8)
Failed to run the action: Upgrade Windows.

<P>To resolve this issue, increase the default task sequence run time and change the task sequence to have the content downloaded locally prior to installation.
</td>
</tbody>
</table>
 


## Appendix A: Less common errors



<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none'>
 <tr style='height:4.1pt'>
  <td width=305 valign=bottom style='width:229.1pt;border:dotted #A6A6A6 1.0pt;
  background:#A6A6A6;padding:0in 5.4pt 0in 5.4pt;height:4.1pt'>
  <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:.0001pt;  text-align:center'><a name="_GoBack"><b>Error Codes</b></a></p>
  </td>
  <td width=570 nowrap valign=bottom style='width:427.5pt;border:dotted #A6A6A6 1.0pt;  border-left:none;background:#A6A6A6;padding:0in 5.4pt 0in 5.4pt;height:4.1pt'>
  <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:.0001pt;  text-align:center'><b>Cause</b></p>
  </td>
  <td width=936 valign=bottom style='width:9.75in;border:dotted #A6A6A6 1.0pt;  border-left:none;background:#A6A6A6;padding:0in 5.4pt 0in 5.4pt;height:4.1pt'>
  <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:.0001pt;  text-align:center'><b>Mitigation</b></p>
  </td>
 </tr>
 <tr style='height:1.45pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:1.45pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Contact
  your system administrator to upgrade Windows Server or Enterprise Editions</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:1.45pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  issue occurs if you run the updater tool. The tool works only with the
  Windows 10 Home, Pro, and Education editions.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:1.45pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>To
  resolve this issue, use a different method to upgrade to Windows 10 version
  1607. For example, download the ISO, and then run Setup from it.</p>
  </td>
 </tr>
 <tr style='height:11.9pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:11.9pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>When
  doing an upgrade to Windows Version 1607 is it supported to use a custom
  install.wim (sysprepped) instead of the default install.wim that comes with
  Windows Version 1607 </p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:11.9pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Unsupported</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:11.9pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>It
  is not supported to replace the install.wim with custom wim (sysprepped or
  not). It is supported to do some minor changes to the default install.wim
  such as injecting latest cumulative update or remove inbox apps. </p>
  </td>
 </tr>
 <tr style='height:1.1pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:1.1pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC1420127</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:1.1pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  typical conversion of the error means that the specified image in the
  specified wim is already mounted for read/write access.<br>
  When we launch the setup.exe, it checks the registry key&nbsp;<br>
  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WIMMount\Mounted Images to check for
  any previously mounted WIM files on the system and if the image is mounted we
  will get this error.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:1.1pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error would be very rare on Upgrades of WIN10 specially when upgrading to the
  Anniversary 1607 Build. This issue has been fixed with the Cumulative updates
  released in June 2016 for Windows 10. When we perform an Upgrade, it is recommended
  to Perform a Windows Update first and apply all important updates on the
  current OS and then start the Upgrade process for Windows 10.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;background:yellow;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x8004100E</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;
  background:yellow;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error code indicates that there is a problem with an Application that has an
  Invalid WMI Namespace</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;
  background:yellow;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>In
  order to fix this problem, we need to open Application Event log and Check
  for Errors for various applications that could be causing this
  error.&nbsp;You can use WMIDIAG tool and make sure that the WMI is working
  well. The step by step instructions are available at:
  https://technet.microsoft.com/en-us/library/ff404265.aspx</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070003-
  0x20007</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs when there is problem with the Internet connection during the
  Windows 10 upgrade.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Since
  this error indicates that the internet connection ran into a problem, you may
  attempt to fix the connectivity issues and reattempt the download of the
  files.<br>
  Alternatively, you may re-create installation media using &quot;Media
  Creation Tool&quot; from a different connected system. Refer:
  https://www.microsoft.com/en-us/software-download/windows10<br>
  <br>
  You can either create a USB drive or an ISO.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070004
  - 0x3000D</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>SYSTEM,
  LOCAL, SELF, System, and Network are reserved names that can’t be used for
  Computer Name.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Ensure
  that you do not use the reserved names as the Computer names. Rename the
  system to a valid Computer name.<br>
  See KB 3086101 for more details.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070004
  - 0x50012</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  Computer account for the system has&nbsp;an invalid name. </p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Please
  ensure that the machine name does not have any invalid characters (See
  https://technet.microsoft.com/en-us/library/cc749460(v=ws.10).aspx).
  Additionally, the names should not be any of the reserved names for systems.
  Rename the system to a valid computer name and try the Setup again. See KB
  3086101 for more details.</p>
  </td>
 </tr>
 <tr style='height:12.4pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070005
  - 0x4000D</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error code means The installation failed in the SECOND_BOOT phase with an
  error in during MIGRATE_DATA operation.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  issue may occur if we have any application / driver that is causing an issue
  while the upgrade to Windows 10 is going on. &nbsp;Preform a clean boot on
  the system. Refer https://support.microsoft.com/en-us/kb/929135 for steps to
  perform a Clean boot.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070057</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error means that One or more arguments are invalid</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  is a very generic error, and it could be due to any of the issues that we
  would have on the machine. This error may not be related to Upgrade only. It
  could be due to any programs; device drivers etc. There is no specific
  resolution for this error</p>
  </td>
 </tr>
 <tr style='height:26.85pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:26.85pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x8007007e</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:26.85pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  error indicates one of the modules required to upgrade to Windows 10 was not
  found, some of these modules could be manifest files, COM Classes, DLL or any
  app packages that may be missing.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:26.85pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>When
  we start the upgrade of the OS, the Setup engine is responsible to check and
  confirm that all OS components / modules are running in good health, so that
  the upgrade succeeds. When we have any issues being reported
  with&nbsp;manifest files, COM Classes, DLL or any app packages, the setup
  engine would give this error. In order to fix this error, we would suggest to
  follow the solutions as below and then start the upgrade again.<br>
  <br>
  Solution 1: System File Checker<br>
  Follow the detailed steps as in:
  https://support.microsoft.com/en-us/kb/929833<br>
  <br>
  Solution 2: Integrated CHKSUR<br>
  Run DISM Command to verify the health of the system:<br>
  1. Go to Start<br>
  2. Search for &quot;&quot;Command Prompt&quot;&quot;<br>
  3. Right Click and select &quot;&quot;Run as Administrator&quot;&quot;<br>
  4. On the prompt type command: Dism /Online /Cleanup-Image /CheckHealth<br>
  5. Hit Enter.<br>
  6. When you use the /CheckHealth argument, the DISM tool will report whether
  the image is healthy, repairable, or non-repairable. If the image is
  non-repairable, you should discard the image and start again. <br>
  7. If the image is repairable, you can use the /RestoreHealth argument to
  repair the image. Dism /Online /Cleanup-Image /RestoreHealth.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x8007025D
  - 0x2000C</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs if the ISO file's metadata is corrupt.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Re-download
  the ISO/Media and re-attempt the upgrade.<br>
  <br>
  You may alternatively, re-create installation media using &quot;Media
  Creation Tool&quot; Refer: https://www.microsoft.com/en-us/software-download/windows10<br>
  <br>
  You can either create a USB drive or an ISO using the Media Creation Tool.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x8007045d</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error indicates that we ran into an I/O device error.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Please
  ensure that all I/O devices are working correctly. Please review the Device
  Manager for any errors and troubleshoot accordingly.<br>
  Refer:
  https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations<br>
  <br>
  Additionally, you can review the following logs to verify which I/O device is
  causing the problem.<br>
   &quot;%systemroot%\$Windows.~BT\Sources\Panther\setupact.log&quot; <br>
  <br>
  If unable to review the logs, post on Windows 10 TechNet Forum
  (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&amp;filter=alltypes&amp;sort=lastpostdesc)</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070490
  - 0x20007</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  error comes up&nbsp;during driver installation phase and it means that some
  of the device driver is incompatible.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Please
  ensure that all the devices are working correctly. Please review the Device
  Manager for any errors and troubleshoot accordingly.<br>
  Refer:
  https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations<br>
  <br>
  Additionally, you can review the following logs to verify which I/O device is
  causing the problem.<br>
   &quot;%systemroot%\$Windows.~BT\Sources\Panther\setupact.log&quot; <br>
  <br>
  If unable to review the logs, post on Windows 10 TechNet Forum
  (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&amp;filter=alltypes&amp;sort=lastpostdesc)</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070542</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  user executing the Setup.exe does not have all permissions required to
  complete the upgrade.&nbsp;</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Please
  ensure the user performing the upgrade is part of Local Administrators group
  or is a Local Admin.<br>
  <br>
  Additionally, to troubleshoot further you may need to identify which process
  is preventing access to certain resources required for upgrade process. That
  can be&nbsp;identify by using Process Monitor
  (https://technet.microsoft.com/en-us/sysinternals/processmonitor).<br>
  Use this (https://support.microsoft.com/en-us/kb/939896) to understand how to
  use Process Monitor and then post the results to&nbsp;Windows 10 TechNet
  Forum
  (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&amp;filter=alltypes&amp;sort=lastpostdesc)</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80070652
  </p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs when another program is being installed at the same time as the
  upgrade.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Ensure
  that the are no other installation currently in progress. If there is, wait
  for the installation to complete. Restart the computer and do the upgrade to
  Windows 10.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x800F0923</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error code indicates that the user entered Safe Mode during the upgrade
  process.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>In
  order to complete the upgrade successfully, we recommend that you reboot the
  system in normal mode. If a roll-back occurs, re-initiate the upgrade.</p>
  </td>
 </tr>
 <tr style='height:.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0x80200056</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error indicates when the upgrade attempts to use a security token for some of
  the operations, but the token is not currently available. </p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>You
  can attempt to re-login to the machine with a local administrator privileges
  and attempt to re-run the upgrade. Ensure that you do not logoff until the
  upgrade is complete.</p>
  </td>
 </tr>
 <tr style='height:1.7pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:1.7pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC0000005</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:1.7pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  error indicates that the setup process lead to an access violation</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:1.7pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Please
  ensure the user performing the upgrade is part of Local Administrators group
  or is a Local Admin.<br>
  <br>
  Additionally, to troubleshoot further you may need to identify which process
  is preventing access to certain resources required for upgrade process. That
  can be&nbsp;identify by using Process Monitor
  (https://technet.microsoft.com/en-us/sysinternals/processmonitor).<br>
  Use this (https://support.microsoft.com/en-us/kb/939896) to understand how to
  use Process Monitor and then post the results to&nbsp;Windows 10 TechNet
  Forum
  (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&amp;filter=alltypes&amp;sort=lastpostdesc)</p>
  </td>
 </tr>
 <tr style='height:113.2pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:113.2pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0XC0000428</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:113.2pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs when the digital signatures for one of the Boot Critical Drivers
  has not been verified.<br>
  <br>
  In most cases, we will see an error on Bootup which will be similar to as
  below:<br>
  File: \Windows\system32\boot\winload.exe<br>
  Status:0xc0000428<br>
  Info: Windows cannot verify the digital signature for this file.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:113.2pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>In
  order to fix this error, we need to look for the file that is causing the
  issue.&nbsp;The file listed in the cause section may vary as well. When this
  error occurs, the machine / device will show a bluescreen and will not be in
  a useable state. At this point,&nbsp;we would need to perform Automatic
  Repair using Windows 10 installation media. The Drivers, conflicts with other
  programs, malware, and memory can all cause startup problems. <br>
  Automatic repair can detect and fix problems that prevent your PC from
  starting. Refer to the steps:<br>
  <br>
  a. Insert the installation USB media and boot Windows Technical Preview from
  it.<br>
  b. In the ‘Windows setup’ page select the ‘language to install’, ‘Time and
  currency format’ and the ‘keyboard or input method’ and click on ‘next’.<br>
  c. Click on ‘Repair your computer’ and select ‘Troubleshoot’.<br>
  d. Select ‘Automatic Repair’ and select the operating system.<br>
  e. You will then see a blue screen and an option to choose. Choose the option
  Troubleshoot and select advanced options.<br>
   f. You may choose Automatic Repair from Advanced boot option.<br>
   g. Follow the instructions.<br>
  <br>
  The above steps should fix the issue and get the driver signatures back as
  well for the corrupted drivers. If that does not help, then we may not have
  any other option than performing a Clean Install of Windows 10 on the machine
  / device.&nbsp;You can create a Windows 10 installation Disc and perform a
  clean installation on the computer. To create a please find the below link:<br>
  https://www.microsoft.com/en-us/software-download/windows10 <br>
  <br>
  Once the media is created by the tool, it will walk you through how to set up
  Windows 10 on your PC. During setup, you might be asked to enter a product
  key.<br>
   If you bought Windows 10 and are installing it for the first time, you’ll
  need to enter the Windows 10 product key you received in the confirmation
  email after your purchase. If you don’t have a product key and you’ve not
  previously upgraded to Windows 10, select I need to buy a Windows 10 product
  key.</p>
  </td>
 </tr>
 <tr style='height:12.4pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC1900101
  - 0x2000B</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs when the device drivers of the hardware connected to the
  computer prevent the Windows 10 upgrade from building the migration file
  list.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>We
  recommended you disconnect the devices that aren't in use when you upgrade
  the computer.</p>
  </td>
 </tr>
 <tr style='height:16.55pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:16.55pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC1900101
  - 0x2000c</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:16.55pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  Setup Platform has encountered an unspecified error during the WINPE Phase.
  This is generally caused by drivers which are not updated at the time when
  the upgrade was started.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:16.55pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>It
  is recommended to select &quot;Download and install updates
  (recommended)&quot; during the upgrade process. Additionally, you can contact
  the Hardware Vendor and get the updates for the device drivers that
  are&nbsp;connected to the system. Ensure all the devices other than the
  Mouse; Keyboard and Display are disconnected during upgrade process. Then
  start setup again.</p>
  </td>
 </tr>
 <tr style='height:49.75pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:49.75pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC1900101
  - 0x40001</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:49.75pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error indicates that we saw an error in the OOBE Phase - Stop 9F.<br>
  This behavior occurs when device drivers do not handle power state transition
  requests properly. The error message most often occurs during one of the
  following actions: <br>
  1. Shutting down<br>
  2. Suspending or resuming from Standby mode<br>
  3. Suspending or resuming from Hibernate mode</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:49.75pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  most common causes for this error would be the connected devices on the
  machine / device as below and it would have suggested that we disable /
  disconnect them from the device /machine before performing the upgrade:<br>
  1. Internal WIFI Modem<br>
  2. Any External connected USB devices such as WEBCAMS; Printers; USB Hard
  Drives<br>
  3. Check to be sure your computer and all devices are on the Hardware
  Compatibility List (HCL) and have WHQL signed and certified drivers.<br>
  <br>
  The setup.exe will perform a rollback of the OS and would return to the older
  OS. Once the rollback is complete if we find the problem causing driver than
  we need to check for %SystemDrive%\$Windows.~bt\sources\Rollback\setupmem.dmp
  file and have a Microsoft Support Professional look into the same.</p>
  </td>
 </tr>
 <tr style='height:12.4pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;background:yellow;padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC1900101
  - 0x4001E</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;
  background:yellow;padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error indicates that the installation failed in the SECOND_BOOT phase with an
  error during PRE_OOBE operation.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;
  background:yellow;padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  is a generic error that occurs during the OOBE phase of Setup. We recommend
  you to review the FAQ for Upgrade to Windows 10
  (https://support.microsoft.com/en-us/help/12435/windows-10-upgrade-faq)</p>
  </td>
 </tr>
 <tr style='height:37.3pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:37.3pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xc1900106</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:37.3pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  indicate that upgrade process was forcefully terminated either by Rebooting
  or forcefully canceling the setup.&nbsp;</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:37.3pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>We
  recommended that when the Windows 10 Upgrade is initiated, one should not
  terminate the process at any time until the Setup completes. Before initiating
  the setup, we should make sure:<br>
  1. The device (Laptop or Surface) it should be connected to power source and adequately
  charged.<br>
  2. The user is not cancelling the setup on the Black Screen, when the
  setup.exe is installing devices and configuring user settings.<br>
  PS: It takes time on the device configuration and migration depending upon
  the Speed of the CPU and the amount of RAM on the system.&nbsp;</p>
  </td>
 </tr>
 <tr style='height:33.15pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:33.15pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC1900200
  - 0x20008</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:33.15pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs when the computer doesn’t meet the minimum requirements to
  download or upgrade to Windows 10.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:33.15pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Refer
  http://www.microsoft.com/en-us/windows/windows-10-specifications?OCID=win10_null_vanity_win10specs
  and make sure that the machine, on which the upgrade is being initiated,
  meets the minimum requirement.<br>
  <br>
  Secondly use the Windows 10 Compatibility Reports to understand upgrade
  issues (https://blogs.technet.microsoft.com/askcore/2016/01/21/using-the-windows-10-compatibility-reports-to-understand-upgrade-issues/)</p>
  </td>
 </tr>
 <tr style='height:58.05pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:58.05pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC1900208
  -1047526904</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:58.05pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs when the computer does not pass the compatibility check for
  upgrading to Windows 10.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:58.05pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error comes when there is software/driver which is not yet certified to be compatible
  with windows 10. Hence you might want to re-run the compatibility check
  before initiating the Upgrade. <br>
  Refer AskCore Blog: Using the Windows 10 Compatibility Reports to understand
  upgrade issues
  (https://blogs.technet.microsoft.com/askcore/2016/01/21/using-the-windows-10-compatibility-reports-to-understand-upgrade-issues/)<br>
  <br>
  Once you have found the in-compatible software/drivers:<br>
  1. Uninstall incompatible software or hardware or driver, <br>
  2. Now re-run the compatibility check just to verify that there no more
  in-compatible software/driver on the machine. <br>
  3. If it comes clean, initiate the upgrade.<br>
  4. Else, repeat the steps until the compatibility check is clean.</p>
  </td>
 </tr>
 <tr style='height:78.8pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:78.8pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>0xC190020e<br>
  0x80070070 - 0x50011<br>
  0x80070070 - 0x50012<br>
  0x80070070 - 0x60000</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:78.8pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>These
  errors would occur if your computer doesn’t have enough free space available
  to install the upgrade.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:78.8pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Typically
  to upgrade to Windows 10, you need free space of 16 GB for 32-bit OS and 20
  GB for 64-bit OS. If there is not enough space refer the following article:<br>
  https://support.microsoft.com/en-us/help/17421/windows-free-up-drive-space <br>
   <br>
  Note: Once the deletion is complete, initiate the upgrade and this time you
  should not receive the error if sufficient space has been made. If that is
  not enough <br>
  then, you can implement solution as mentioned below.<br>
   <br>
  Using External Drive<br>
  If your device allows it, you can use&nbsp;an external USB drive for the
  upgrade process. Windows setup will backup the previous version of Windows to
  a USB external drive. The external drive must be at least 8GB – but having
  16GB is recommended.&nbsp;<br>
  Some important points to remember if you choose to use an external storage
  drive for installing Windows 10:<br>
   - We recommend that the external drive is formatted in NTFS.&nbsp; Drives
  that are formatted in FAT32 may run into errors due to FAT32 file size
  limitations.&nbsp; To learn &nbsp; how to format in NTFS, click here.<br>
  - USB drives are preferred over SD cards because drivers for SD cards are not
  migrated if the device does not support Connected Standby.</p>
  </td>
 </tr>
 <tr style='height:12.4pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Couldn't
  Update System Reserved Partition</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs because the System Reserved Partition (SRP) is full.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Free
  up 15MB of space on the SRP using the appropriate method described in
  Knowledge Base article 3086249, and then try the upgrade again.</p>
  </td>
 </tr>
 <tr style='height:12.4pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>MismatchedLanguage,
  found HardBlock</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error code indicates that the Current Language installed on the machine is
  not Supported for the Upgrade to start.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:12.4pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>We
  need to have English as the base Language in order to upgrade to Windows 10.
  There is a Hard block for the Upgrade to be performed and the compatibility
  scan data is saved to
  %Systemroot%\$WINDOWS.~BT\Sources\Panther\CompatData_YYYY.txt</p>
  </td>
 </tr>
 <tr style='height:37.3pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:37.3pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Setup
  couldn’t start properly. Please reboot your PC and try running Windows 10
  Setup again</p>
  </td>
  <td width=570 nowrap style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:37.3pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs if the upgrade files are corrupt due to a failed Windows 10
  download.</p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:37.3pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  Setup.exe initializes the temporary folders to copy the data and prepare the
  machine for upgrade. The specific folders that are initialized are:<br>
  <br>
  1. C:\$Windows ~BT (Hidden Folder)<br>
  2. C:\$Windows~WS (Hidden Folder)<br>
  <br>
  In order to delete the above folders we would suggest that we use the Disk
  Clean Up tool and delete the folders and then try to run the upgrade again.<br>
  https://support.microsoft.com/en-us/help/17421/windows-free-up-drive-space&nbsp;</p>
  </td>
 </tr>
 <tr style='height:82.95pt'>
  <td width=305 style='width:229.1pt;border:dotted #A6A6A6 1.0pt;border-top:  none;padding:0in 5.4pt 0in 5.4pt;height:82.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>Unable
  to resurrect NewSystem object. hr=0x80070002</p>
  </td>
  <td width=570 style='width:427.5pt;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:82.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>This
  error occurs when the setup.exe is unable to create the newsystem data file
  when the upgrade starts.<br>
  If we look at the C:\$Windows.~BT\Sources\Panther\diagerr.xml, we should see
  something like:<br>
  CSetupPlatform::ResurrectNewSystem: <br>
  Failure: Win32Exception: \\?\C:\$Windows.~BT\Sources\NewSystem.dat: <br>
  The system cannot find the file specified. [0x00000002] __cdecl &nbsp; &nbsp;<br>
  UnBCL::FileStream::FileStream(const class UnBCL::String *,enum <br>
  UnBCL::FileMode,enum UnBCL::FileAccess,enum UnBCL::FileShare,unsigned long)<br>
   </p>
  </td>
  <td width=936 style='width:9.75in;border-top:none;border-left:none;  border-bottom:dotted #A6A6A6 1.0pt;border-right:dotted #A6A6A6 1.0pt;  padding:0in 5.4pt 0in 5.4pt;height:82.95pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'>The
  NewSystem.dat is an operational file that is created at the beginning of the
  upgrade process and used at various points in the setup phase like driver
  migrations; disk space detections; Platforms detections and creating a base
  image of the new OS that is extracted from the INSTALL.WIM, which is the
  source file for the upgrade.<br>
  There are couple of solutions for this issue:<br>
  Solution 1: Disk Space<br>
  Check and Make sure that we have good amount of free disk space on the OS
  partition. Disk space requirements:<br>
  a. For 32-bit: Greater than 16gb<br>
  b. For 64-Bit: Greater than 20gb<br>
  <br>
  Solution 2: Upgrade Path<br>
  We need to make sure that we are upgrading the existing OS, to the New
  Version as per the guidelines described in
  https://technet.microsoft.com/en-us/itpro/windows/deploy/windows-10-upgrade-paths?f=255&amp;MSPPError=-2147217396<br>
  <br>
  Solution: Media Creation Tool<br>
  Use the Media Creation tool and create an ISO and then start the upgrade of
  the OS. The tool can be downloaded from:
  http://go.microsoft.com/fwlink/?LinkId=691209</p>
  </td>
 </tr>
</table>

<p class=MsoNormal>&nbsp;</p>

<p class=MsoNormal>&nbsp;</p>

</div>

</body>

</html>



## Related topics

•	Windows 10 FAQ for IT professionals
•	Windows 10 Enterprise system requirements
•	Windows 10 IT pro forums
