---
title: Log files - Windows IT Pro
ms.reviewer: 
manager: dansimp
ms.author: lomayor
description: Resolve Windows 10 upgrade errors for ITPros. Technical information for IT professionals to help diagnose Windows setup errors.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: lomayor
ms.localizationpriority: medium
ms.topic: article
---

# Log files

**Applies to**
-   Windows 10

>[!NOTE]
>This is a 400 level topic (advanced).<br>
>See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.


Several log files are created during each phase of the upgrade process. These log files are essential for troubleshooting upgrade problems. By default, the folders that contain these log files are hidden on the upgrade target computer. To view the log files, configure Windows Explorer to view hidden items, or use a tool to automatically gather these logs. The most useful log is **setupact.log**. The log files are located in a different folder depending on the Windows Setup phase. Recall that you can determine the phase from the extend code. 

Note: Also see the [Windows Error Reporting](windows-error-reporting.md) section in this document for help locating error codes and log files. 

The following table describes some log files and how to use them for troubleshooting purposes:<br>

<br>

<table>
<tr><td BGCOLOR="#a0e4fa"><B>Log file</td><td BGCOLOR="#a0e4fa"><B>Phase: Location</td><td BGCOLOR="#a0e4fa"><B>Description</td><td BGCOLOR="#a0e4fa"><B>When to use</td>
<tr><td rowspan="5">setupact.log</td><td>Down-Level:<br>$Windows.~BT\Sources\Panther</td><td>Contains information about setup actions during the downlevel phase. </td>
<td>All down-level failures and starting point for rollback investigations.<br> This is the most important log for diagnosing setup issues.</td>
<tr><td>OOBE:<br>$Windows.~BT\Sources\Panther\UnattendGC</td>
<td>Contains information about actions during the OOBE phase.</td><td>Investigating rollbacks that failed during OOBE phase and operations – 0x4001C, 0x4001D, 0x4001E, 0x4001F.</td>
<tr><td>Rollback:<br>$Windows.~BT\Sources\Rollback<td>Contains information about actions during rollback.<td>Investigating generic rollbacks - 0xC1900101.</td>
<tr><td>Pre-initialization (prior to downlevel):<br>Windows</td><td>Contains information about initializing setup.<td>If setup fails to launch.</td>
<tr><td>Post-upgrade (after OOBE):<br>Windows\Panther<td>Contains information about setup actions during the installation.<td>Investigate post-upgrade related issues.</td>
<tr><td>setuperr.log<td>Same as setupact.log<td>Contains information about setup errors during the installation.<td>Review all errors encountered during the installation phase.</td>
<tr><td>miglog.xml<td>Post-upgrade (after OOBE):<br>Windows\Panther<td>Contains information about what was migrated during the installation.<td>Identify post upgrade data migration issues.</td>
<tr><td>BlueBox.log<td>Down-Level:<br>Windows\Logs\Mosetup<td>Contains information communication between setup.exe and Windows Update.<td>Use during WSUS and WU down-level failures or for 0xC1900107.</td>
<tr><td>Supplemental rollback logs:<br>
Setupmem.dmp<br>
setupapi.dev.log<br>
Event logs (*.evtx)</td>
<td>$Windows.~BT\Sources\Rollback<td>Additional logs collected during rollback.</td>
<td>
Setupmem.dmp: If OS bugchecks during upgrade, setup will attempt to extract a mini-dump.<br>
Setupapi: Device install issues - 0x30018<br>
Event logs: Generic rollbacks (0xC1900101) or unexpected reboots.</td>
</table>

## Log entry structure

A setupact.log or setuperr.log entry (files are located at C:\Windows) includes the following elements:

<ol>
<LI><B>The date and time</B> - 2016-09-08 09:20:05.
<LI><B>The log level</B> - Info, Warning, Error, Fatal Error.
<LI><B>The logging component</B> - CONX, MOUPG, PANTHR, SP, IBSLIB, MIG, DISM, CSI, CBS.
<UL>
<LI>The logging components SP (setup platform), MIG (migration engine), and CONX (compatibility information) are particularly useful for troubleshooting Windows Setup errors.
</UL>
<LI><B>The message</B> - Operation completed successfully.
</OL>

See the following example:

| Date/Time | Log level | Component | Message |
|------|------------|------------|------------|
|2016-09-08 09:23:50,|  Warning |         MIG  |   Could not replace object C:\Users\name\Cookies. Target Object cannot be removed.|


## Analyze log files

>The following instructions are meant for IT professionals. Also see the [Upgrade error codes](upgrade-error-codes.md) section in this guide to familiarize yourself with [result codes](upgrade-error-codes.md#result-codes) and [extend codes](upgrade-error-codes.md#extend-codes).

<br>To analyze Windows Setup log files:

<ol>
<LI>Determine the Windows Setup error code. This code should be returned by Windows Setup if it is not successful with the upgrade process.
<LI>Based on the [extend code](upgrade-error-codes.md#extend-codes) portion of the error code, determine the type and location of a [log files](#log-files) to investigate.
<LI>Open the log file in a text editor, such as notepad.
<LI>Using the [result code](upgrade-error-codes.md#result-codes) portion of the Windows Setup error code, search for the result code in the file and find the last occurrence of the code. Alternatively search for the "abort" and abandoning" text strings described in step 7 below.
<LI>To find the last occurrence of the result code:
  <OL type="a">
  <LI>Scroll to the bottom of the file and click after the last character.
  <LI>Click <B>Edit</B>.
  <LI>Click <B>Find</B>.
  <LI>Type the result code.
  <LI>Under <B>Direction</B> select <b>Up</b>.
  <LI>Click <b>Find Next</b>.
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

<br><B>setuperr.log</B> content:

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

</B>The error 0x00000570 is a [Win32 error code](https://msdn.microsoft.com/library/cc231199.aspx) corresponding to: ERROR_FILE_CORRUPT: The file or directory is corrupted and unreadable.

Therefore, Windows Setup failed because it was not able to migrate the corrupt file **C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\[CN]**.  This file is a local system certificate and can be safely deleted. Searching the setupact.log file for additional details, the phrase "Shell application requested abort" is found in a location with the same timestamp as the lines in setuperr.log. This confirms our suspicion that this file is the cause of the upgrade failure:

<br><B>setupact.log</B> content:

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
</pre>


<br>This analysis indicates that the Windows upgrade error can be resolved by deleting the C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\[CN] file. Note: In this example, the full, unshortened file name is  C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\be8228fb2d3cb6c6b0ccd9ad51b320b4_a43d512c-69f2-42de-aef9-7a88fabdaa3f. 

## Related topics

[Windows 10 FAQ for IT professionals](https://technet.microsoft.com/windows/dn798755.aspx)
<br>[Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)
<br>[Windows 10 Specifications](https://www.microsoft.com/en-us/windows/Windows-10-specifications)
<br>[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)
<br>[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
