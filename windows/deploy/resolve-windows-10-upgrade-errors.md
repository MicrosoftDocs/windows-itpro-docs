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

This topic provides a brief introduction to Windows 10 installation processes and provides resolution procedures you can use to resolve common problems.

## The Windows 10 upgrade process

The Windows Setup application is used to upgrade a computer to Windows 10, or to perform a clean installation. Windows Setup starts and restarts the computer, gathers information, copies files, and creates or adjusts configuration settings. When performing an operating system upgrade, Windows Setup uses the following phases:

1. **Downlevel phase**: The downlevel phase is run within the previous operating system. Installation components are gathered.
2. **Safe OS phase**: A recovery partition is configured and updates are installed. An OS rollback is prepared if needed.
        - Example error codes: 0x2000C, 0x20017
3. **First boot phase**: Initial settings are applied.
        - Example error codes: 0x30018, 0x3000D
4. **Second boot phase**: Final settings are applied. This is also called the **OOBE boot phase**.
        - Example error: 0x4000D, 0x40017
5. **Uninstall phase**: This phase occurs if upgrade is unsuccessful.
        - Example error: 0x50011, 0x50012

**Figure 1**: Phases of a successful Windows 10 upgrade (uninstall is not shown):

![Upgrade process](images/upgrade-process.png)

DU = Driver/device updates.<BR>
OOBE = Out of box experience.<BR>
WIM = Windows image (Microsoft)

## Upgrade error codes

Setup will return two codes:

1. A result code, corresponding to a specific Win32 error.
2. An extend code, representing the phase when a failure occurred.
        - The extend code contains information about both the *phase* in which an error occurred, and the *operation* that was being performed when the error occurred.  

>For example, a result code of **0xC1900101** with an extend code of **0x4000D** will be returned as: **0xC1900101 - 0x4000D**. In this case, the extend code **0x4000D** can be evaluated as representing a problem during phase 4 (**0x4**) with data migration (**000D**). A list of extend codes with phase and operation associations is provided below.

Note: If only a result code is returned, this can be because a tool is being used that was not able to capture the extend code. For example, if you are using the [Windows 10 Upgrade Assistant](https://support.microsoft.com/en-us/kb/3159635) then only a result code might be returned.

### Extend codes

The following tables provide the corresponding phase and operation for values of an extend code:

<TABLE cellspacing=0 cellpadding=0>
<TR><TD colspan=2 align="center" valign="top" BGCOLOR="#a0e4fa"><B>Extend code: phase</B></TD>
<TR><TD style='padding:0in 4pt 0in 4pt'><b>Hex</b><TD style='padding:0in 5.4pt 0in 5.4pt'><span style='padding:0in 1pt 0in 1pt;'><b>Phase</b>
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>0<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_UNKNOWN
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_DOWNLEVEL
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>2<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_SAFE_OS
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>3<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>4<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>5<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_UNINSTALL
</TABLE>

<TABLE border=0 cellspacing=0 cellpadding=0 style='border-collapse:collapse;border:none'>
<TR><TD colspan=2 align="center" valign="top" BGCOLOR="#a0e4fa"><B>Extend code: operation</B></TD>
<TR><TD align="left" valign="top" style='border:dotted #A6A6A6 1.0pt;'>
<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt'><b>Hex</b><TD style='padding:0in 4pt 0in 4pt'><span style='padding:0in 5.4pt 0in 5.4pt;'><b>Operation</b>
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>0<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_UNKNOWN
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_COPY_PAYLOAD
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>2<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_DOWNLOAD_UPDATES
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>3<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_UPDATES
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>4<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_RECOVERY_ENVIRONMENT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>5<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_RECOVERY_IMAGE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>6<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_REPLICATE_OC
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>7<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_DRVIERS
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>8<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_SAFE_OS
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>9<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_ROLLBACK
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>A<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>B<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>C<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_APPLY_IMAGE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>D<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_MIGRATE_DATA
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>E<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_SET_PRODUCT_KEY
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>F<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ADD_UNATTEND
</TABLE>
</TD>
<TD align="left" valign="top" style='border:dotted #A6A6A6 1.0pt;'>
<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt'><b>Hex</b><TD style='padding:0in 4pt 0in 4pt'><b>Operation</b>
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>10<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ADD_DRIVER
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>11<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ENABLE_FEATURE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>12<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_DISABLE_FEATURE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>13<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_REGISTER_ASYNC_PROCESS
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>14<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_REGISTER_SYNC_PROCESS
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>15<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_CREATE_FILE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>16<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_CREATE_REGISTRY
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>17<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>18<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_SYSPREP
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>19<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_OOBE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1A<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_BEGIN_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1B<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_END_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1C<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_BEGIN_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1D<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_END_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1E<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PRE_OOBE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>1F<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_POST_OOBE
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>20<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ADD_PROVISIONING_PACKAGE
</TABLE>
</TD>
</TR>
</TABLE>

## Log files

Various log files are created during each phase of the upgrade process. These log files are essential for troubleshooting upgrade problems. The most useful log is **setupact.log**. These logs are located in a different folder depending on the Windows Setup phase. Recall that you can determine the phase from the extend code. 

<P>The following table describes some log files and how to use them for troubleshooting purposes:

<TABLE>
<TR>
<td BGCOLOR="#a0e4fa"><B>Log file<td BGCOLOR="#a0e4fa"><B>Phase: Location<td BGCOLOR="#a0e4fa"><B>Description<td BGCOLOR="#a0e4fa"><B>When to use

<TR><TD rowspan=5>setupact.log<TD>Down-Level:<BR>$Windows.~BT\Sources\Panther<TD>Contains information about setup actions during the downlevel phase. <TD>All down-level failures and starting point for rollback investigations.<BR> This is the most important log for diagnosing setup issues.
<TR><TD>OOBE:<BR>$Windows.~BT\Sources\Panther<TD>Contains information about actions during the OOBE phase.<TD>Investigating rollbacks that failed during OOBE phase and operations – 0x4001C, 0x4001D, 0x4001E, 0x4001F.
<TR><TD>Rollback:<BR>$Windows.~BT\Sources\Panther<TD>Contains information about actions during rollback.<TD>Investigating generic rollbacks - 0xC1900101.
<TR><TD>Pre-initialization (prior to downlevel):<BR>$Windows.~BT\Sources\Panther<TD>Contains information about initializing setup.<TD>If setup fails to launch.
<TR><TD>Post-upgrade (after OOBE):<BR>$Windows.~BT\Sources\Panther<TD>Contains information about setup actions during the installation.<TD>Investigate post-upgrade related issues.

<TR><TD>setuperr.log<TD>Same as setupact.log<TD>Contains information about setup errors during the installation.<TD>Review all errors encountered during the installation phase.

<TR><TD>miglog.xml<TD>Post-upgrade (after OOBE):<BR>Windows\Panther<TD>Contains information about what was migrated during the installation.<TD>Identify post upgrade data migration issues.

<TR><TD>BlueBox.log<TD>Down-Level:<BR>Windows\Logs\Mosetup<TD>Contains information communication between setup.exe and Windows Update.<TD>Use during WSUS and WU down-level failures or for 0xC1900107.

<TR><TD>Supplemental rollback logs:<BR>
Setupmem.dmp<BR>
setupapi.dev.log<BR>
Event logs (*.evtx)


<TD>$Windows.~BT\Sources\Rollback<TD>Additional logs collected during rollback.
<TD>
Setupmem.dmp: If OS bugchecks during upgrade, setup will attempt to extract a mini-dump.<BR>
Setupapi: Device install issues – 0x30018<BR>
Event logs: Generic rollbacks (0xC1900101) or unexpected reboots.

</TABLE>



## Common error codes

A common result code is 0xC1900101. This result code can be thrown at any stage of the upgrade process, with the exception of the SafeOS phase. 0xC1900101 usually indicates that an incompatible driver is present, which can cause blue screens, system hangs, and unexpected reboots. Analysis of supplemental log files is often helpful in indentifying the incompatible driver. You can also attempt to run setup in the absence of drivers by performing a [clean boot](https://support.microsoft.com/en-us/kb/929135) before initiating the upgrade process. 

<P>The following general procedures can be used to diagnose some of the most common error codes that contain a result code of 0xC1900101:


<TABLE border=1 cellspacing=0 cellpadding=0>
<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x20017</B>
</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>A driver has caused an illegal operation.
<BR>Windows was not able to migrate the driver, resulting in a rollback of the operating system.
</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>
1.	Make sure all that drivers are updated.<BR>
2.	Open the Setuperr.log and Setupact.log files under the %windir%\Panther directory, and then locate the problem drivers.
<BR>For more information, see [Understanding Failures and Log Files](https://technet.microsoft.com/en-us/library/ee851579.aspx).<BR>
3.	Update or uninstall the problem drivers.
</TABLE>
</TD>
</TR>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x30018</B>
</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>A device driver has stopped responding to setup.exe during the upgrade process.
</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>
Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display.
<BR>Contact your hardware vendor to obtain updated device drivers.
<BR>Ensure that "Download and install updates (recommended)" is accepted at the start of the upgrade process. 
</TABLE>
</TD>
</TR>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x4000D</B>
</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>A rollback occurred due to a driver configuration issue.
</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><p>Review the rollback log and determine the stop code.
<BR>The rollback log is located in the **C:\$Windows.~BT\Sources\Panther** folder.  Look for text similar to the following:
<p>Info SP     Crash 0x0000007E detected
<BR>Info SP       Module name           : 
<BR>Info SP       Bugcheck parameter 1  : 0xFFFFFFFFC0000005
<BR>Info SP       Bugcheck parameter 2  : 0xFFFFF8015BC0036A
<BR>Info SP       Bugcheck parameter 3  : 0xFFFFD000E5D23728
<BR>Info SP       Bugcheck parameter 4  : 0xFFFFD000E5D22F40
<BR>Info SP     Cannot recover the system.
<BR>Info SP     Rollback: Showing splash window with restoring text: Restoring your previous version of Windows.


<P>Typically there is a a dump file for the crash to analyze. If you are not equipped to debug the dump, then attempt the following basic troubleshooting procedures:<BR>

1. Make sure you have enough disk space.<BR>
2. If a driver is identified in the bug check message, disable the driver or check with the manufacturer for driver updates.<BR>
3. Try changing video adapters.<BR>
4. Check with your hardware vendor for any BIOS updates.<BR>
5. Disable BIOS memory options such as caching or shadowing.
</p>
</TABLE>
</TD>
</TR>


<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x40017</B>
</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>Windows 10 upgrade failed after the second reboot.
<BR>This is usually caused by a faulty driver. For example: antivirus filter drivers or encryption drivers.
</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>Clean boot into Windows, and then attempt the upgrade to Windows 10.<BR>

For more information, see [How to perform a clean boot in Windows](https://support.microsoft.com/en-us/kb/929135).

<P>Ensure you select the option to "Download and install updates (recommended)."
</TABLE>
</TD>
</TR>

</TABLE>




## Common errors I've edited but don't know how to classify

<table>

<tr>
<td BGCOLOR="#a0e4fa"><B>Error code</th>
<td BGCOLOR="#a0e4fa"><B>Cause</th>
<td BGCOLOR="#a0e4fa"><B>Mitigation</th>
</tr>

<tr>
<td>0xC1900200</td>
<td>Setup.exe has detected that the machine does not meet the minimum system requirements.</td>
<td>Ensure the system you are trying to upgrade meets the minimum system requirements. <P>See [Windows 10 specifications](https://www.microsoft.com/en-us/windows/windows-10-specifications)  for information.</td>
</tr>


<tr>
<td>0x80090011</td>
<td>A device driver error occurred during user data migration.</td>
<td>Contact your hardware vendor and get all the device drivers updated. It is recommended to have an active internet connection during upgrade process. 
<P>Ensure that "Download and install updates (recommended)" is accepted at the start of the upgrade process.</td>
</tr>
<tr>
<td>0xC7700112</td>
<td>Failure to complete writing data to the system drive, possibly due to write access failure on the hard disk.</td>
<td>This issue is resolved in the latest version of Upgrade Assistant. 
<P>Ensure that "Download and install updates (recommended)" is accepted at the start of the upgrade process.</td>
</tr>

<tr>
<td>0x80190001</td>
<td>An unexpected error was encountered while attempting to download files required for upgrade.</td>
<td>To resolve this issue, download and run the media creation tool. See [Download windows 10](https://www.microsoft.com/en-us/software-download/windows10).
</td>
</tr>
<tr>
<td>0x80246007</td>
<td>The update was not downloaded successfully.</td>
<td>Attempt other methods of upgrading the operatign system.<BR>
Download and run the media creation tool. See [Download windows 10](https://www.microsoft.com/en-us/software-download/windows10). 
<BR>Attempt to upgrade using .ISO or USB.<BR>
**Note**: Windows 10 Enterprise isn’t available in the media creation tool. For more information, go to the [Volume Licensing Service Center](https://www.microsoft.com/licensing/servicecenter/default.aspx).
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
<td>Use the MSCONFIG tool to perform a clean boot on the machine and then try to perform the update again. For more information, see [How to perform a clean boot in Windows](https://support.microsoft.com/en-us/kb/929135).</td>
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
<td>Reboot the device and run setup again. If restarting device does not resolve the issue, then use the Disk Cleanup utility and cleanup the temporary as well as the System files. For more information, see [Disk cleanup in Windows 10](https://support.microsoft.com/en-us/instantanswers/8fef4121-711b-4be1-996f-99e02c7301c2/disk-cleanup-in-windows-10).</td>
</tr>
<tr>
<td>0xC1900209</td>
<td>The user has chosen to cancel because the system does not pass the compatibility scan to install the update. Setup.exe will report this error when it can upgrade the machine with user data but cannot migrate installed applications.</td>
<td>Incompatible software is blocking the upgrade process. Uninstall the application and try the upgrade again. See [Windows 10 Pre-Upgrade Validation using SETUP.EXE](https://blogs.technet.microsoft.com/mniehaus/2015/08/23/windows-10-pre-upgrade-validation-using-setup-exe/) for more information.

<P>You can also download the [Windows Assessment and Deployment Kit (ADK) for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=526740) and install Application Compatibility Tools.
</td>
</tr>

<tr>
<td>display is not compatible</td>
<td>The display card installed is not compatible with Windows 10.</td>
<td>Uninstall the display adapter and start the upgrade again. When setup completes successfully, install the latest display adapter driver using Windows Update or by downloading from the computer manufacturers website. Use compatibility mode if necessary.
</td>
</tr>
<tr>
<td>0x8007002 </td>
<td>This error is specific to upgrades using System Center Configuration Manager 2012 R2 SP1 CU3 (5.00.8238.1403)</td>
<td>Analyze the SMSTS.log and verify that the upgrade is failing on "Apply Operating system" Phase: Error 80072efe DownloadFileWithRanges() failed. 80072efe. ApplyOperatingSystem (0x0760)

<P>The error 80072efe means that the connection with the server was terminated abnormally.

<P>To resolve this issue, try the OS Deployment test on a client in same VLAN as the Configuration Manager server. Check the network configuration for random client-server connection issues happening on the remote VLAN.
</td>
</tr>
<tr>
<td>Error 800705B4: This operation returned because the timeout period expired.</td>
<td>A time out issue set by the task sequence limitation to 180 mins of run time. This can also occur if the System Center client is corrupted.</td>
<td>Review the SMSTS.log file and verify the following error is displayed:<BR>
Command line execution failed (800705B4) TSManager 3/30/2016 10:11:29 PM 8920 (0x22D8)<BR>
Failed to run the action: Upgrade Windows.<BR>

<P>To resolve this issue, increase the default task sequence run time and change the task sequence to have the content downloaded locally prior to installation.
</td>
</table>

## Appendix A: Less common errors I haven't edited yet

<TABLE>

<TR><td BGCOLOR="#a0e4fa">Error Codes<td BGCOLOR="#a0e4fa">Cause<td BGCOLOR="#a0e4fa">Mitigation</TD></TR>
<TR><TD>0x80070003- 0x20007<TD>This error occurs when there is problem with the Internet connection during the Windows 10 upgrade.<TD>"Since this error indicates that the internet connection ran into a problem, you may attempt to fix the connectivity issues and reattempt the download of the files.
Alternatively, you may re-create installation media using ""Media Creation Tool"" from a different connected system. Refer: https://www.microsoft.com/en-us/software-download/windows10

You can either create a USB drive or an ISO.
"</TD></TR>
<TR><TD>0x8007025D - 0x2000C<TD>This error occurs if the ISO file's metadata is corrupt.<TD>"Re-download the ISO/Media and re-attempt the upgrade.

You may alternatively, re-create installation media using ""Media Creation Tool"" Refer: https://www.microsoft.com/en-us/software-download/windows10

You can either create a USB drive or an ISO using the Media Creation Tool.
"</TD></TR>
<TR><TD>0x80070490 - 0x20007<TD>The error comes up during driver installation phase and it means that some of the device driver is incompatible.<TD>"Please ensure that all the devices are working correctly. Please review the Device Manager for any errors and troubleshoot accordingly.
Refer: https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations

Additionally, you can review the following logs to verify which I/O device is causing the problem.
 ""%systemroot%\$Windows.~BT\Sources\Panther\setupact.log"" 

If unable to review the logs, post on Windows 10 TechNet Forum (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&filter=alltypes&sort=lastpostdesc)
"</TD></TR>
<TR><TD>0xC1900101 - 0x2000B<TD>This error occurs when the device drivers of the hardware connected to the computer prevent the Windows 10 upgrade from building the migration file list.<TD>We recommended you disconnect the devices that aren't in use when you upgrade the computer.</TD></TR>
<TR><TD>0xC1900101 - 0x2000c<TD>The Setup Platform has encountered an unspecified error during the WINPE Phase. This is generally caused by drivers which are not updated at the time when the upgrade was started.<TD>It is recommended to select "Download and install updates (recommended)" during the upgrade process. Additionally, you can contact the Hardware Vendor and get the updates for the device drivers that are connected to the system. Ensure all the devices other than the Mouse; Keyboard and Display are disconnected during upgrade process. Then start setup again.</TD></TR>
<TR><TD>0xC1900200 - 0x20008<TD>This error occurs when the computer doesn’t meet the minimum requirements to download or upgrade to Windows 10.<TD>"Refer http://www.microsoft.com/en-us/windows/windows-10-specifications?OCID=win10_null_vanity_win10specs and make sure that the machine, on which the upgrade is being initiated, meets the minimum requirement.

Secondly use the Windows 10 Compatibility Reports to understand upgrade issues (https://blogs.technet.microsoft.com/askcore/2016/01/21/using-the-windows-10-compatibility-reports-to-understand-upgrade-issues/)
"</TD></TR>
<TR><TD>0x80070004 - 0x3000D<TD>SYSTEM, LOCAL, SELF, System, and Network are reserved names that can’t be used for Computer Name.<TD>"Ensure that you do not use the reserved names as the Computer names. Rename the system to a valid Computer name.
See KB 3086101 for more details.
"</TD></TR>
<TR><TD>0xC1900101 - 0x40001<TD>"This error indicates that we saw an error in the OOBE Phase - Stop 9F. This behavior occurs when device drivers do not handle power state transition requests properly. The error message most often occurs during one of the following actions: 1. Shutting down
2. Suspending or resuming from Standby mode
3. Suspending or resuming from Hibernate mode"<TD>"The most common causes for this error would be the connected devices on the machine / device as below and it would have suggested that we disable / disconnect them from the device /machine before performing the upgrade:
1. Internal WIFI Modem
2. Any External connected USB devices such as WEBCAMS; Printers; USB Hard Drives
3. Check to be sure your computer and all devices are on the Hardware Compatibility List (HCL) and have WHQL signed and certified drivers.

The setup.exe will perform a rollback of the OS and would return to the older OS. Once the rollback is complete if we find the problem causing driver than we need to check for %SystemDrive%\$Windows.~bt\sources\Rollback\setupmem.dmp file and have a Microsoft Support Professional look into the same.
"</TD></TR>
<TR><TD>0xC1900101 - 0x4001E<TD>This error indicates that the installation failed in the SECOND_BOOT phase with an error during PRE_OOBE operation.<TD>This is a generic error that occurs during the OOBE phase of Setup. We recommend you to review the FAQ for Upgrade to Windows 10 (https://support.microsoft.com/en-us/help/12435/windows-10-upgrade-faq)</TD></TR>
<TR><TD>0x80070005 - 0x4000D<TD>This error code means The installation failed in the SECOND_BOOT phase with an error in during MIGRATE_DATA operation.<TD>This issue may occur if we have any application / driver that is causing an issue while the upgrade to Windows 10 is going on.  Preform a clean boot on the system. Refer https://support.microsoft.com/en-us/kb/929135 for steps to perform a Clean boot.</TD></TR>
<TR><TD>0x80070004 - 0x50012<TD>The Computer account for the system has an invalid name. <TD>Please ensure that the machine name does not have any invalid characters (See https://technet.microsoft.com/en-us/library/cc749460(v=ws.10).aspx). Additionally, the names should not be any of the reserved names for systems. Rename the system to a valid computer name and try the Setup again. See KB 3086101 for more details.</TD></TR>
<TR><TD>"0xC190020e 0x80070070 - 0x50011
0x80070070 - 0x50012
0x80070070 - 0x60000"<TD>These errors would occur if your computer doesn’t have enough free space available to install the upgrade.<TD>"Typically to upgrade to Windows 10, you need free space of 16 GB for 32-bit OS and 20 GB for 64-bit OS. If there is not enough space refer the following article:
https://support.microsoft.com/en-us/help/17421/windows-free-up-drive-space 
 
Note: Once the deletion is complete, initiate the upgrade and this time you should not receive the error if sufficient space has been made. If that is not enough 
then, you can implement solution as mentioned below.
 
Using External Drive
If your device allows it, you can use an external USB drive for the upgrade process. Windows setup will backup the previous version of Windows to a USB external drive. The external drive must be at least 8GB – but having 16GB is recommended. 
Some important points to remember if you choose to use an external storage drive for installing Windows 10:
 - We recommend that the external drive is formatted in NTFS.  Drives that are formatted in FAT32 may run into errors due to FAT32 file size limitations.  To learn   how to format in NTFS, click here.
- USB drives are preferred over SD cards because drivers for SD cards are not migrated if the device does not support Connected Standby.
"</TD></TR>





</TABLE>

## Appendix B: Less common errors I haven't edited and don't know how to classify

<TABLE>

<TR><td BGCOLOR="#a0e4fa">Error Codes<td BGCOLOR="#a0e4fa">Cause<td BGCOLOR="#a0e4fa">Mitigation</TD></TR>
<TR><TD>Contact your system administrator to upgrade Windows Server or Enterprise Editions<TD>This issue occurs if you run the updater tool. The tool works only with the Windows 10 Home, Pro, and Education editions.<TD>To resolve this issue, use a different method to upgrade to Windows 10 version 1607. For example, download the ISO, and then run Setup from it.</TD></TR>
<TR><TD>When doing an upgrade to Windows Version 1607 is it supported to use a custom install.wim (sysprepped) instead of the default install.wim that comes with Windows Version 1607 <TD>Unsupported<TD>It is not supported to replace the install.wim with custom wim (sysprepped or not). It is supported to do some minor changes to the default install.wim such as injecting latest cumulative update or remove inbox apps. </TD></TR>
<TR><TD>0xC1420127<TD>The typical conversion of the error means that the specified image in the specified wim is already mounted for read/write access. When we launch the setup.exe, it checks the registry key. HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WIMMount\Mounted Images to check for any previously mounted WIM files on the system and if the image is mounted we will get this error.<TD>This error would be very rare on Upgrades of WIN10 specially when upgrading to the Anniversary 1607 Build. This issue has been fixed with the Cumulative updates released in June 2016 for Windows 10. When we perform an Upgrade, it is recommended to Perform a Windows Update first and apply all important updates on the current OS and then start the Upgrade process for Windows 10.</TD></TR>
<TR><TD>0x8004100E<TD>This error code indicates that there is a problem with an Application that has an Invalid WMI Namespace<TD>In order to fix this problem, we need to open Application Event log and Check for Errors for various applications that could be causing this error. You can use WMIDIAG tool and make sure that the WMI is working well. The step by step instructions are available at: https://technet.microsoft.com/en-us/library/ff404265.aspx</TD></TR>
<TR><TD>0x80070057<TD>This error means that One or more arguments are invalid<TD>This is a very generic error, and it could be due to any of the issues that we would have on the machine. This error may not be related to Upgrade only. It could be due to any programs; device drivers etc. There is no specific resolution for this error</TD></TR>
<TR><TD>0x8007007e<TD>The error indicates one of the modules required to upgrade to Windows 10 was not found, some of these modules could be manifest files, COM Classes, DLL or any app packages that may be missing.<TD>"When we start the upgrade of the OS, the Setup engine is responsible to check and confirm that all OS components / modules are running in good health, so that the upgrade succeeds. When we have any issues being reported with manifest files, COM Classes, DLL or any app packages, the setup engine would give this error. In order to fix this error, we would suggest to follow the solutions as below and then start the upgrade again.

Solution 1: System File Checker
Follow the detailed steps as in: https://support.microsoft.com/en-us/kb/929833

Solution 2: Integrated CHKSUR
Run DISM Command to verify the health of the system:
1. Go to Start
2. Search for """"Command Prompt""""
3. Right Click and select """"Run as Administrator""""
4. On the prompt type command: Dism /Online /Cleanup-Image /CheckHealth
5. Hit Enter.
6. When you use the /CheckHealth argument, the DISM tool will report whether the image is healthy, repairable, or non-repairable. If the image is non-repairable, you should discard the image and start again. 
7. If the image is repairable, you can use the /RestoreHealth argument to repair the image. Dism /Online /Cleanup-Image /RestoreHealth.
"</TD></TR>
<TR><TD>0x8007045d<TD>This error indicates that we ran into an I/O device error.<TD>"Please ensure that all I/O devices are working correctly. Please review the Device Manager for any errors and troubleshoot accordingly.
Refer: https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations

Additionally, you can review the following logs to verify which I/O device is causing the problem.
 ""%systemroot%\$Windows.~BT\Sources\Panther\setupact.log"" 

If unable to review the logs, post on Windows 10 TechNet Forum (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&filter=alltypes&sort=lastpostdesc)
"</TD></TR>
<TR><TD>0x80070542<TD>The user executing the Setup.exe does not have all permissions required to complete the upgrade. <TD>"Please ensure the user performing the upgrade is part of Local Administrators group or is a Local Admin.

Additionally, to troubleshoot further you may need to identify which process is preventing access to certain resources required for upgrade process. That can be identify by using Process Monitor (https://technet.microsoft.com/en-us/sysinternals/processmonitor).
Use this (https://support.microsoft.com/en-us/kb/939896) to understand how to use Process Monitor and then post the results to Windows 10 TechNet Forum (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&filter=alltypes&sort=lastpostdesc)
"</TD></TR>
<TR><TD>0x80070652 <TD>This error occurs when another program is being installed at the same time as the upgrade.<TD>Ensure that the are no other installation currently in progress. If there is, wait for the installation to complete. Restart the computer and do the upgrade to Windows 10.</TD></TR>
<TR><TD>0x800F0923<TD>This error code indicates that the user entered Safe Mode during the upgrade process.<TD>In order to complete the upgrade successfully, we recommend that you reboot the system in normal mode. If a roll-back occurs, re-initiate the upgrade.</TD></TR>
<TR><TD>0x80200056<TD>This error indicates when the upgrade attempts to use a security token for some of the operations, but the token is not currently available. <TD>You can attempt to re-login to the machine with a local administrator privileges and attempt to re-run the upgrade. Ensure that you do not logoff until the upgrade is complete.</TD></TR>
<TR><TD>0xC0000005<TD>The error indicates that the setup process lead to an access violation<TD>"Please ensure the user performing the upgrade is part of Local Administrators group or is a Local Admin.

Additionally, to troubleshoot further you may need to identify which process is preventing access to certain resources required for upgrade process. That can be identify by using Process Monitor (https://technet.microsoft.com/en-us/sysinternals/processmonitor).
Use this (https://support.microsoft.com/en-us/kb/939896) to understand how to use Process Monitor and then post the results to Windows 10 TechNet Forum (https://social.technet.microsoft.com/Forums/en-us/home?forum=win10itprogeneral&filter=alltypes&sort=lastpostdesc)
"</TD></TR>
<TR><TD>0XC0000428<TD>"This error occurs when the digital signatures for one of the Boot Critical Drivers has not been verified. In most cases, we will see an error on Bootup which will be similar to as below:
File: \Windows\system32\boot\winload.exe
Status:0xc0000428
Info: Windows cannot verify the digital signature for this file."<TD>"In order to fix this error, we need to look for the file that is causing the issue. The file listed in the cause section may vary as well. When this error occurs, the machine / device will show a bluescreen and will not be in a useable state. At this point, we would need to perform Automatic Repair using Windows 10 installation media. The Drivers, conflicts with other programs, malware, and memory can all cause startup problems. 
Automatic repair can detect and fix problems that prevent your PC from starting. Refer to the steps:

a. Insert the installation USB media and boot Windows Technical Preview from it.
b. In the ‘Windows setup’ page select the ‘language to install’, ‘Time and currency format’ and the ‘keyboard or input method’ and click on ‘next’.
c. Click on ‘Repair your computer’ and select ‘Troubleshoot’.
d. Select ‘Automatic Repair’ and select the operating system.
e. You will then see a blue screen and an option to choose. Choose the option Troubleshoot and select advanced options.
 f. You may choose Automatic Repair from Advanced boot option.
 g. Follow the instructions.

The above steps should fix the issue and get the driver signatures back as well for the corrupted drivers. If that does not help, then we may not have any other option than performing a Clean Install of Windows 10 on the machine / device. You can create a Windows 10 installation Disc and perform a clean installation on the computer. To create a please find the below link:
https://www.microsoft.com/en-us/software-download/windows10 

Once the media is created by the tool, it will walk you through how to set up Windows 10 on your PC. During setup, you might be asked to enter a product key.
 If you bought Windows 10 and are installing it for the first time, you’ll need to enter the Windows 10 product key you received in the confirmation email after your purchase. If you don’t have a product key and you’ve not previously upgraded to Windows 10, select I need to buy a Windows 10 product key.
"</TD></TR>
<TR><TD>0xc1900106<TD>This indicate that upgrade process was forcefully terminated either by Rebooting or forcefully canceling the setup. <TD>"We recommended that when the Windows 10 Upgrade is initiated, one should not terminate the process at any time until the Setup completes. Before initiating the setup, we should make sure:
1. The device (Laptop or Surface) it should be connected to power source and adequately charged.
2. The user is not cancelling the setup on the Black Screen, when the setup.exe is installing devices and configuring user settings.
PS: It takes time on the device configuration and migration depending upon the Speed of the CPU and the amount of RAM on the system. 
"</TD></TR>
<TR><TD>0xC1900208 -1047526904<TD>This error occurs when the computer does not pass the compatibility check for upgrading to Windows 10.<TD>"This error comes when there is software/driver which is not yet certified to be compatible with windows 10. Hence you might want to re-run the compatibility check before initiating the Upgrade. 
Refer AskCore Blog: Using the Windows 10 Compatibility Reports to understand upgrade issues (https://blogs.technet.microsoft.com/askcore/2016/01/21/using-the-windows-10-compatibility-reports-to-understand-upgrade-issues/)

Once you have found the in-compatible software/drivers:
1. Uninstall incompatible software or hardware or driver, 
2. Now re-run the compatibility check just to verify that there no more in-compatible software/driver on the machine. 
3. If it comes clean, initiate the upgrade.
4. Else, repeat the steps until the compatibility check is clean.
"</TD></TR>
<TR><TD>Couldn't Update System Reserved Partition<TD>This error occurs because the System Reserved Partition (SRP) is full.<TD>Free up 15MB of space on the SRP using the appropriate method described in Knowledge Base article 3086249, and then try the upgrade again.</TD></TR>
<TR><TD>MismatchedLanguage, found HardBlock<TD>This error code indicates that the Current Language installed on the machine is not Supported for the Upgrade to start.<TD>We need to have English as the base Language in order to upgrade to Windows 10. There is a Hard block for the Upgrade to be performed and the compatibility scan data is saved to %Systemroot%\$WINDOWS.~BT\Sources\Panther\CompatData_YYYY.txt</TD></TR>
<TR><TD>Setup couldn’t start properly. Please reboot your PC and try running Windows 10 Setup again<TD>This error occurs if the upgrade files are corrupt due to a failed Windows 10 download.<TD>"The Setup.exe initializes the temporary folders to copy the data and prepare the machine for upgrade. The specific folders that are initialized are:

1. C:\$Windows ~BT (Hidden Folder)
2. C:\$Windows~WS (Hidden Folder)

In order to delete the above folders we would suggest that we use the Disk Clean Up tool and delete the folders and then try to run the upgrade again.
https://support.microsoft.com/en-us/help/17421/windows-free-up-drive-space 
"</TD></TR>
<TR><TD>Unable to resurrect NewSystem object. hr=0x80070002<TD>"This error occurs when the setup.exe is unable to create the newsystem data file when the upgrade starts. If we look at the C:\$Windows.~BT\Sources\Panther\diagerr.xml, we should see something like:
CSetupPlatform::ResurrectNewSystem: 
Failure: Win32Exception: \\?\C:\$Windows.~BT\Sources\NewSystem.dat: 
The system cannot find the file specified. [0x00000002] __cdecl    
UnBCL::FileStream::FileStream(const class UnBCL::String *,enum 
UnBCL::FileMode,enum UnBCL::FileAccess,enum UnBCL::FileShare,unsigned long)"<TD>"The NewSystem.dat is an operational file that is created at the beginning of the upgrade process and used at various points in the setup phase like driver migrations; disk space detections; Platforms detections and creating a base image of the new OS that is extracted from the INSTALL.WIM, which is the source file for the upgrade.
There are couple of solutions for this issue:
Solution 1: Disk Space
Check and Make sure that we have good amount of free disk space on the OS partition. Disk space requirements:
a. For 32-bit: Greater than 16gb
b. For 64-Bit: Greater than 20gb

Solution 2: Upgrade Path
We need to make sure that we are upgrading the existing OS, to the New Version as per the guidelines described in https://technet.microsoft.com/en-us/itpro/windows/deploy/windows-10-upgrade-paths?f=255&MSPPError=-2147217396

Solution: Media Creation Tool
Use the Media Creation tool and create an ISO and then start the upgrade of the OS. The tool can be downloaded from: http://go.microsoft.com/fwlink/?LinkId=691209
"</TD></TR>


</TABLE>

## Appendix A: Example setupact.log



## Related topics

•	Windows 10 FAQ for IT professionals
•	Windows 10 Enterprise system requirements
•	Windows 10 IT pro forums
