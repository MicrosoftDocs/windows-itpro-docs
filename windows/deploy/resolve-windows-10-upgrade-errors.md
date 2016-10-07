---
title: Resolve Windows 10 upgrade errors
description: Resolve Windows 10 upgrade errors
ms.assetid: DFEFE22C-4FEF-4FD9-BFC4-9B419C339502
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
localizationpriority: high
---

# Resolve Windows 10 upgrade errors

**Applies to**
-   Windows 10

This topic provides a brief introduction to Windows 10 installation processes, and provides resolution procedures that IT administrators can use to resolve issues with Windows 10 upgrade.

## In this topic

The following sections and procedures are provided in this guide:

- [The Windows 10 upgrade process](#the-windows-10-upgrade-process): An explanation of phases used during the upgrade process.<BR>
- [Quick fixes](#quick-fixes): Steps you can take to eliminate many Windows upgrade errors.<BR>
- [Upgrade error codes](#upgrade-error-codes): The components of an error code are explained.
    - [Result codes](#result-codes): Information about result codes.
    - [Extend codes](#extend-codes): Information about extend codes.
- [Log files](#log-files): A list and description of log files useful for troubleshooting.
    - [Log entry structure](#log-entry-structure): The format of a log entry is described.
    - [Analyze log files](#analyze-log-files): General procedures for log file analysis, and an example.
- [Resolution procedures](#resolution-procedures): Causes and mitigation procedures associated with specific error codes.
    - [0xC1900101](#0xC1900101): Information about the 0xC1900101 result code.
    - [0x800xxxxx](#0x800xxxxx): Information about result codes that start with 0x800.
    - [Other result codes](#other-result-codes): Additional causes and mitigation procedures are provided for some result codes.
    - [Other error codes](#other-error-codes): Additional causes and mitigation procedures are provided for some error codes.

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
        - Example error: 0x50000

**Figure 1**: Phases of a successful Windows 10 upgrade (uninstall is not shown):

![Upgrade process](images/upgrade-process.png)

DU = Driver/device updates.<BR>
OOBE = Out of box experience.<BR>
WIM = Windows image (Microsoft)

## Quick fixes

The following steps can resolve many Windows upgrade problems.

<OL>
<LI>Check all hard drives for errors and attempt repairs. To automatically repair hard drives, open an elevated command prompt, switch to the drive you wish to repair, and type the following command. You will be required to reboot the computer if the hard drive being repaired is also the system drive.
<UL>
<LI>chkdsk /F</LI>
</UL>
</LI>
<LI>Attept to restore and repair system files by typing the following commands at an elevated command prompt. It may take several minutes for the command operations to be completed. For more information, see [Repair a Windows Image](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/repair-a-windows-image).
<UL>
<LI>DISM.exe /Online /Cleanup-image /Restorehealth</LI>
<LI>sfc /scannow</LI>
</UL>
</LI>
<LI>Update Windows so that all available recommended updates are installed.</LI>
<LI>Uninstall non-Microsoft antivirus software.
  <UL> 
  <LI>Use Windows Defender for protection during the upgrade. 
  <LI>Verify compatibility information and re-install antivirus applications after the upgrade.</LI></LI>
  </UL>
<LI>Uninstall all nonessential software.</LI>
<LI>Remove nonessential external hardware, such as docks and USB devices.</LI> 
<LI>Update firmware and drivers.</LI>
<LI>Ensure that "Download and install updates (recommended)" is accepted at the start of the upgrade process.</LI>
<LI>Verify at least 16 GB of free space is available to upgrade a 32-bit OS, or 20 GB for a 64-bit OS.
</OL>



## Upgrade error codes

If the upgrade process is not successful, Windows Setup will return two codes:

1. **A result code**: The result code corresponds to a specific Win32 error.
2. **An extend code**: The extend code contains information about both the *phase* in which an error occurred, and the *operation* that was being performed when the error occurred.  

>For example, a result code of **0xC1900101** with an extend code of **0x4000D** will be returned as: **0xC1900101 - 0x4000D**.

Note: If only a result code is returned, this can be because a tool is being used that was not able to capture the extend code. For example, if you are using the [Windows 10 Upgrade Assistant](https://support.microsoft.com/en-us/kb/3159635) then only a result code might be returned.

### Result codes

>A result code of **0xC1900101** is generic and indicates that a rollback occurred. In most cases, the cause is a driver compatibility issue. <BR>To troubleshoot a failed upgrade that has returned a result code of 0xC1900101, analyze the extend code to determine the Windows Setup phase, and see the [Other error codes](#other-error-codes) section later in this topic.

Result codes can be matched to the type of error encountered. To match a result code to an error:

1. Identify the error code type, either Win32 or NTSTATUS, using the first hexidecimal digit:
        <BR>8 = Win32 error code (ex: 0x**8**0070070)
        <BR>C = NTSTATUS value (ex: 0x**C**1900107)
2. Write down the last 4 digits of the error code (ex: 0x8007**0070** = 0070). These digits correspond to the last 16 bits of the [HRESULT](https://msdn.microsoft.com/en-us/library/cc231198.aspx) or the [NTSTATUS](https://msdn.microsoft.com/en-us/library/cc231200.aspx) structure.
3. Based on the type of error code determined in the first step, match the 4 digits derived from the second step to either a [Win32 error code](https://msdn.microsoft.com/en-us/library/cc231199.aspx), or an [NTSTATUS value](https://msdn.microsoft.com/en-us/library/cc704588.aspx). 

For example:
- 0x80070070 = Win32 = 0070 = 0x00000070 = ERROR_DISK_FULL
- 0xC1900107 = NTSTATUS = 0107 = 0x00000107 = STATUS_SOME_NOT_MAPPED

Some result codes are self-explanatory, whereas others are more generic and require further analysis. In the examples shown above, ERROR_DISK_FULL indicates that the hard drive is full and additional room is needed to complete Windows upgrade. The message STATUS_SOME_NOT_MAPPED is more ambiguous, and means that an action is pending. In this case, the action pending is often the cleanup operation from a previous installation attempt, which can be resolved with a system reboot. 

### Extend codes

>Important: Extend codes reflect the current Windows 10 upgrade process, and might change in future releases of Windows 10. The codes discussed in this section apply to Windows 10 version 1607, also known as the Anniversary Update.

Extend codes can be matched to the phase and operation when an error occurred. To match an extend code to the phase and operation:

1. Use the first digit to identify the phase (ex: 0x4000D  = 4).
2. Use the last two digits to identify the operation (ex: 0x4000D  = 0D).
3. Match the phase and operation to values in the tables provided below.

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

For example: An extend code of **0x4000D**, represents a problem during phase 4 (**0x4**) with data migration (**000D**).

## Log files

Several log files are created during each phase of the upgrade process. These log files are essential for troubleshooting upgrade problems. By default, the folders that contain these log files are hidden on the upgrade target computer. To view the log files, configure Windows Explorer to view hidden items, or use a tool to automatically gather these logs. The most useful log is **setupact.log**. The log files are located in a different folder depending on the Windows Setup phase. Recall that you can determine the phase from the extend code. 

<P>The following table describes some log files and how to use them for troubleshooting purposes:

<TABLE>
<TR>
<td BGCOLOR="#a0e4fa"><B>Log file<td BGCOLOR="#a0e4fa"><B>Phase: Location<td BGCOLOR="#a0e4fa"><B>Description<td BGCOLOR="#a0e4fa"><B>When to use

<TR><TD rowspan=5>setupact.log<TD>Down-Level:<BR>$Windows.~BT\Sources\Panther<TD>Contains information about setup actions during the downlevel phase. 
<TD>All down-level failures and starting point for rollback investigations.<BR> This is the most important log for diagnosing setup issues.
<TR><TD>OOBE:<BR>$Windows.~BT\Sources\Panther\UnattendGC
<TD>Contains information about actions during the OOBE phase.<TD>Investigating rollbacks that failed during OOBE phase and operations – 0x4001C, 0x4001D, 0x4001E, 0x4001F.
<TR><TD>Rollback:<BR>$Windows.~BT\Sources\Rollback<TD>Contains information about actions during rollback.<TD>Investigating generic rollbacks - 0xC1900101.
<TR><TD>Pre-initialization (prior to downlevel):<BR>Windows</TD><TD>Contains information about initializing setup.<TD>If setup fails to launch.
<TR><TD>Post-upgrade (after OOBE):<BR>Windows\Panther<TD>Contains information about setup actions during the installation.<TD>Investigate post-upgrade related issues.

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
Setupapi: Device install issues - 0x30018<BR>
Event logs: Generic rollbacks (0xC1900101) or unexpected reboots.

</TABLE>

### Log entry structure

A setupact.log or setuperr.log entry includes the following elements:

<OL>
<LI><B>The date and time</B> - 2016-09-08 09:20:05.
<LI><B>The log level</B> - Info, Warning, Error, Fatal Error.
<LI><B>The logging component</B> - CONX, MOUPG, PANTHR, SP, IBSLIB, MIG, DISM, CSI, CBS.
<UL>
<LI>The logging components SP (setup platform), MIG (migration engine), and CONX (compatibility information) are particularly useful for troubleshooting Windows Setup errors.
</UL>
<LI><B>The message</B> - Operation completed successfully.
</OL>

See the following example:

<P><TABLE BORDER=1>
<TR><TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>2016-09-08 09:23:50</TD>
<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>Warning</TD>
<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>MIG</TD>
<TD style='padding:0in 4pt 0in 4pt'><span style='font-size:9.0pt'>Could not replace object C:\Users\user1\Cookies. Target Object cannot be removed.</TD></TR>
</TABLE>

### Analyze log files


<P>To analyze Windows Setup log files:

<OL>
<LI>Determine the Windows Setup error code.
<LI>Based on the [extend code](#extend-codes) portion of the error code, determine the type and location of a [log files](#log-files) to investigate.
<LI>Open the log file in a text editor, such as notepad.
<LI>Using the result code portion of the Windows Setup error code, search for the result code in the file and find the last occurrence of the code. Alternatively search for the "abort" and abandoning" text strings described in step 7 below.
<LI>To find the last occurrence of the result code:
  <OL type="a">
  <LI>Scroll to the bottom of the file and click after the last character.
  <LI>Click **Edit**.
  <LI>Click **Find**.
  <LI>Type the result code.
  <LI>Under **Direction** select **Up**.
  <LI>Click **Find Next**.
  </OL>
<LI> When you have located the last occurrence of the result code, scroll up a few lines from this location in the file and review the processes that failed just prior to generating the result code.
<LI> Search for the following important text strings:
  <UL>
  <LI><B>Shell application requested abort</B>
  <LI><B>Abandoning apply due to error for object</B>
  </UL>
<LI> Decode Win32 errors that appear in this section.
<LI> Write down the timestamp for the observed errors in this section.
<LI> Search other log files for additional information matching these timestamps or errors.
</OL>

For example, assume that the error code for an error is 0x8007042B - 0x2000D. Searching for "8007042B" reveals the following content from the setuperr.log file:

>Some lines in the text below are shortened to enhance readability. The date and time at the start of each line (ex: 2016-10-05 15:27:08) is shortened to minutes and seconds, and the certificate file name which is a long text string is shortened to just "CN."

<P><B>setuperr.log</B> content:

<pre style="font-size: 10px; overflow-y: visible">
27:08, Error           SP     Error READ, 0x00000570 while gathering/applying object: File, C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Will return 0[gle=0x00000570]
27:08, Error           MIG    Error 1392 while gathering object C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Shell application requested abort![gle=0x00000570]
27:08, Error                  Gather failed. Last error: 0x00000000
27:08, Error           SP     SPDoFrameworkGather: Gather operation failed. Error: 0x0000002C
27:09, Error           SP     CMigrateFramework: Gather framework failed. Status: 44
27:09, Error           SP     Operation failed: Migrate framework (Full). Error: 0x8007042B[gle=0x000000b7]
27:09, Error           SP     Operation execution failed: 13. hr = 0x8007042B[gle=0x000000b7]
27:09, Error           SP     CSetupPlatformPrivate::Execute: Execution of operations queue failed, abandoning. Error: 0x8007042B[gle=0x000000b7]
</PRE>

The first line indicates there was an error **0x00000570** with the file **C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]** (shown below):

<pre style="font-size: 10px; overflow-y: visible">
27:08, Error           SP     Error READ, 0x00000570 while gathering/applying object: File, C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Will return 0[gle=0x00000570]
</PRE>

</B>The error 0x00000570 is a [Win32 error code](https://msdn.microsoft.com/en-us/library/cc231199.aspx) corresponding to: ERROR_FILE_CORRUPT: The file or directory is corrupted and unreadable.

Therefore, Windows Setup failed because it was not able to migrate the corrupt file **C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\[CN]**.  This file is a local system certificate and can be safely deleted. Searching the setupact.log file for additional details, the phrase "Shell application requested abort" is found in a location with the same timestamp as the lines in setuperr.log. This confirms our suspicion that this file is the cause of the upgrade failure:

<P><B>setupact.log</B> content:

<pre style="font-size: 10px; overflow-y: visible">
27:00, Info                   Gather started at 10/5/2016 23:27:00
27:00, Info [0x080489] MIG    Setting system object filter context (System)
27:00, Info [0x0803e5] MIG    Not unmapping HKCU\Software\Classes; it is not mapped
27:00, Info [0x0803e5] MIG    Not unmapping HKCU; it is not mapped
27:00, Info            SP     ExecuteProgress: Elapsed events:1 of 4, Percent: 12
27:00, Info [0x0802c6] MIG    Processing GATHER for migration unit: <System>\UpgradeFramework (CMXEAgent)
27:08, Error           SP     Error READ, 0x00000570 while gathering/applying object: File, C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Will return 0[gle=0x00000570]
27:08, Error           MIG    Error 1392 while gathering object C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Shell application requested abort![gle=0x00000570]
27:08, Info            SP     ExecuteProgress: Elapsed events:2 of 4, Percent: 25
27:08, Info            SP     ExecuteProgress: Elapsed events:3 of 4, Percent: 37
27:08, Info [0x080489] MIG    Setting system object filter context (System)
27:08, Info [0x0803e5] MIG    Not unmapping HKCU\Software\Classes; it is not mapped
27:08, Info [0x0803e5] MIG    Not unmapping HKCU; it is not mapped
27:08, Info            MIG    COutOfProcPluginFactory::FreeSurrogateHost: Shutdown in progress.
27:08, Info            MIG    COutOfProcPluginFactory::LaunchSurrogateHost::CommandLine: -shortened-
27:08, Info            MIG    COutOfProcPluginFactory::LaunchSurrogateHost: Successfully launched host and got control object.
27:08, Error                  Gather failed. Last error: 0x00000000
27:08, Info                   Gather ended at 10/5/2016 23:27:08 with result 44
27:08, Info                   Leaving MigGather method
27:08, Error           SP     SPDoFrameworkGather: Gather operation failed. Error: 0x0000002C
</PRE>

<P>This analysis indicates that the Windows upgrade error can be resolved by deleting the C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\[CN] file. Note: In this example, the full, unshortened file name is  C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\be8228fb2d3cb6c6b0ccd9ad51b320b4_a43d512c-69f2-42de-aef9-7a88fabdaa3f. 


## Resolution procedures


### 0xC1900101


A frequently observed result code is 0xC1900101. This result code can be thrown at any stage of the upgrade process, with the exception of the downlevel phase. 0xC1900101 is a generic rollback code, and usually indicates that an incompatible driver is present. The incompatible driver can cause blue screens, system hangs, and unexpected reboots. Analysis of supplemental log files is often helpful, such as:<BR>

- The minidump file: $Windows.~bt\Sources\Rollback\setupmem.dmp, 
- Event logs: $Windows.~bt\Sources\Rollback\*.evtx 
- The device install log: $Windows.~bt\Sources\Rollback\setupapi\setupapi.dev.log

The device install log is particularly helpful if rollback occurs during the sysprep operation (extend code 0x30018).  To resolve a rollback due to driver conflicts, try running setup using a minimal set of drivers and startup programs by performing a [clean boot](https://support.microsoft.com/en-us/kb/929135) before initiating the upgrade process. 

<P>See the following general troubleshooting procedures associated with a result code of 0xC1900101:


<TABLE border=1 cellspacing=0 cellpadding=0>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x20004</B>
</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>Windows Setup encountered an error during the SAFE_OS with the INSTALL_RECOVERY_ENVIRONMENT operation
<BR>This is generally caused by out-of-date drivers. 
</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>Uninstall antivirus applications.
<BR>Remove all unused SATA devices.
<BR>Remove all unused devices and drivers.
<BR>Update drivers and BIOS.
</TABLE>
</TD>
</TR>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x2000c</B>
</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>Windows Setup encountered an unspecified error during Wim apply in the WinPE phase.
<BR>This is generally caused by out-of-date drivers. 
</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display.
<BR>Contact your hardware vendor to obtain updated device drivers.
<BR>Ensure that "Download and install updates (recommended)" is accepted at the start of the upgrade process. 
</TABLE>
</TD>
</TR>


<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x20017

</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>A driver has caused an illegal operation.
<BR>Windows was not able to migrate the driver, resulting in a rollback of the operating system.
<P>This is a safeOS boot failure, typically caused by drivers or non-Microsoft disk encryption software. 
</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>
Ensure that all that drivers are updated.<BR>
Open the Setuperr.log and Setupact.log files in the %windir%\Panther directory, and then locate the problem drivers.
<BR>For more information, see [Understanding Failures and Log Files](https://technet.microsoft.com/en-us/library/ee851579.aspx).
<BR>Update or uninstall the problem drivers.
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
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>0xC1900101 - 0x3000D</B>
</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>Installation failed during the FIRST_BOOT phase while attempting the MIGRATE_DATA operation.
<BR>This can occur due to a problem with a display driver.

</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>
Disconnect all peripheral devices that are connected to the system, except for the mouse, keyboard and display.
<BR>Update or uninstall the display driver.
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
<P>Installation failed during the second boot phase while attempting the MIGRATE_DATA operation.  

<P>This can occur due to incompatible drivers.  

</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>
<P>Check supplemental rollback logs for a setupmem.dmp file, or event logs for any unexpected reboots or errors. 
<p>Review the rollback log and determine the stop code.
<BR>The rollback log is located in the **C:\$Windows.~BT\Sources\Panther** folder.  An example analysis is shown below. This example is not representative of all cases:
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

### 0x800xxxxx

Result codes starting with the digits 0x800 are also important to understand. These error codes indicate general operating system errors, and are not unique to the Windows upgrade process. Examples include timeouts, devices not functioning, and a process stopping unexpectedly.

<P>See the following general troubleshooting procedures associated with a result code of 0x800xxxxx:

<TABLE border=1 cellspacing=0 cellpadding=0>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

8000405 - 0x20007

</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

An unspecified error occurred with a driver during the SafeOS phase.

</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

This error has more than one possible cause. Attempt [quick fixes](#quick-fixes), and if not successful, [analyze log files](#analyze-log-files) in order to determine the problem and solution.

</TABLE>
</TD>
</TR>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

800704B8 - 0x3001A

</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

An extended error has occurred during the first boot phase.

</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

Disable or uninstall non-Microsoft antivirus applications, disconnect all unnecessary devices, and perform a [clean boot](https://support.microsoft.com/en-us/kb/929135).

</TABLE>
</TD>
</TR>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

8007042B - 0x4000D

</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

The installation failed during the second boot phase while attempting the MIGRATE_DATA operation. 
<BR>This issue can occur due to file system, application, or driver issues.

</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

[Analyze log files](#analyze-log-files) in order to determine the file, application, or driver that is not able to be migrated. Disconnect, update, remove, or replace the device or object.

</TABLE>
</TD>
</TR>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

8007001F - 0x4000D

</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

General failure, a device attached to the system is not functioning.  

</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

[Analyze log files](#analyze-log-files) in order to determine the device that is not functioning properly. Disconnect, update, or replace the device.

</TABLE>
</TD>
</TR>

<TR><TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><B>Code</B>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

8007042B - 0x4001E

</TABLE>

<P><TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Cause</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

The installation failed during the second boot phase while attempting the PRE_OOBE operation.

</TABLE>
</TD>

<TD align="left" valign="top" style='border:solid #000000 1.0pt;'>

<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'><b>Mitigation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;border:dotted #FFFFFF 0.0pt;'>

This error has more than one possible cause. Attempt [quick fixes](#quick-fixes), and if not successful, [analyze log files](#analyze-log-files) in order to determine the problem and solution.

</TABLE>
</TD>
</TR>

</TABLE>


### Other result codes

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
<td>0x8007002 </td>
<td>This error is specific to upgrades using System Center Configuration Manager 2012 R2 SP1 CU3 (5.00.8238.1403)</td>
<td>Analyze the SMSTS.log and verify that the upgrade is failing on "Apply Operating system" Phase: Error 80072efe DownloadFileWithRanges() failed. 80072efe. ApplyOperatingSystem (0x0760)

<P>The error 80072efe means that the connection with the server was terminated abnormally.

<P>To resolve this issue, try the OS Deployment test on a client in same VLAN as the Configuration Manager server. Check the network configuration for random client-server connection issues happening on the remote VLAN.
</td>
</tr>

</table>

### Other error codes

<TABLE>

<TR><td BGCOLOR="#a0e4fa">Error Codes<td BGCOLOR="#a0e4fa">Cause<td BGCOLOR="#a0e4fa">Mitigation</TD></TR>
<TR><TD>0x80070003- 0x20007
<TD>This is a failure during SafeOS phase driver installation. 

<TD>[Verify device drivers](https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations) on the computer, and [analyze log files](#analyze-log-files) to determine the problem driver.
</TD></TR>
<TR><TD>0x8007025D - 0x2000C
<TD>This error occurs if the ISO file's metadata is corrupt.<TD>"Re-download the ISO/Media and re-attempt the upgrade.

Alternatively, re-create installation media the [Media Creation Tool](https://www.microsoft.com/en-us/software-download/windows10).

</TD></TR>
<TR><TD>0x80070490 - 0x20007<TD>An incompatible device driver is present.

<TD>[Verify device drivers](https://msdn.microsoft.com/windows/hardware/drivers/install/troubleshooting-device-and-driver-installations) on the computer, and [analyze log files](#analyze-log-files) to determine the problem driver.

</TD></TR>
<TR><TD>0xC1900101 - 0x2000c
<TD>An unspecified error occurred in the SafeOS phase during WIM apply. This can be caused by an outdated driver or disk corruption.
<TD>Run checkdisk to repair the file system. For more information, see the [quick fixes](#quick-fixes) section in this guide.
<P>Update drivers on the computer, and select "Download and install updates (recommended)" during the upgrade process. Disconnect devices other than the mouse, keyboard and display.</TD></TR>
<TR><TD>0xC1900200 - 0x20008

<TD>The computer doesn’t meet the minimum requirements to download or upgrade to Windows 10.

<TD>See [Windows 10 Specifications](https://www.microsoft.com/en-us/windows/windows-10-specifications) and verify the computer meets minimum requirements.

<BR>Review logs for [compatibility information](https://blogs.technet.microsoft.com/askcore/2016/01/21/using-the-windows-10-compatibility-reports-to-understand-upgrade-issues/).</TD></TR>
<TR><TD>0x80070004 - 0x3000D
<TD>This is a problem with data migration during the first boot phase. There are multiple possible causes.

<TD>[Analyze log files](#analyze-log-files) to determine the issue.</TD></TR>
<TR><TD>0xC1900101 - 0x4001E
<TD>Installation failed in the SECOND_BOOT phase with an error during PRE_OOBE operation.
<TD>This is a generic error that occurs during the OOBE phase of setup. See the [0xC1900101](#0xC1900101) section of this guide and review general troubleshooting procedures described in that section.</TD></TR>
<TR><TD>0x80070005 - 0x4000D
<TD>The installation failed in the SECOND_BOOT phase with an error in during MIGRATE_DATA operation. This error indicates that access was denied while attempting to migrate data.
<TD>[Analyze log files](#analyze-log-files) to determine the data point that is reporting access denied.</TD></TR>
<TR><TD>0x80070004 - 0x50012
<TD>Windows Setup failed to open a file. 
<TD>[Analyze log files](#analyze-log-files) to determine the data point that is reporting access problems.</TD></TR>
<TR><TD>0xC190020e 
<BR>0x80070070 - 0x50011
<BR>0x80070070 - 0x50012
<BR>0x80070070 - 0x60000
<TD>These errors indicate the computer does not have enough free space available to install the upgrade.
<TD>To upgrade a computer to Windows 10, it requires 16 GB of free hard drive space for a 32-bit OS, and 20 GB for a 64-bit OS. If there is not enough space, attempt to [free up drive space](https://support.microsoft.com/en-us/help/17421/windows-free-up-drive-space) before proceeding with the upgrade.
 
<P>Note: If your device allows it, you can use an external USB drive for the upgrade process. Windows setup will back up the previous version of Windows to a USB external drive. The external drive must be at least 8GB (16GB is recommended). The external drive should be formatted using NTFS.  Drives that are formatted in FAT32 may run into errors due to FAT32 file size limitations. USB drives are preferred over SD cards because drivers for SD cards are not migrated if the device does not support Connected Standby.
</TD></TR>

</TABLE>




## Related topics

[Windows 10 FAQ for IT professionals](https://technet.microsoft.com/en-us/windows/dn798755.aspx)
<BR>[Windows 10 Enterprise system requirements](https://technet.microsoft.com/en-us/windows/dn798752.aspx)
<BR>[Windows 10 Specifications](https://www.microsoft.com/en-us/windows/Windows-10-specifications)
<BR>[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)
<BR>[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
