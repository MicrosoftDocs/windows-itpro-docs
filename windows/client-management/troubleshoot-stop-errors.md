---
title: Advanced troubleshooting for Stop error or blue screen error issue
description: Learn how to troubleshoot Stop error or blue screen issues.
ms.prod: w10
ms.mktglfcycl:
ms.sitesec: library
ms.topic: troubleshooting
author: kaushika-msft
ms.localizationpriority: medium
ms.author: kaushika
ms.date: 12/19/2018
---

# Advanced troubleshooting for Stop error or blue screen error issue

>[!NOTE]
>If you're not a support agent or IT professional, you'll find more helpful information about Stop error ("blue screen") messages in [Troubleshoot blue screen errors](https://support.microsoft.com/help/14238).

 
## What causes Stop errors?

A Stop error is displayed as a blue screen that contains the name of the faulty driver, such as any of the following example drivers:

- atikmpag.sys
- igdkmd64.sys
- nvlddmkm.sys

There is no simple explanation for the cause of Stop errors (also known as blue screen errors or bug check errors). Many different factors can be involved. However, various studies indicate that Stop errors usually are not caused by Microsoft Windows components. Instead, these errors are generally related to malfunctioning hardware drivers or drivers that are installed by third-party software. This includes video cards, wireless network cards, security programs, and so on.

Our analysis of the root causes of crashes indicates the following:

- 70 percent are caused by third-party driver code
- 10 percent are caused by hardware issues 
- 5 percent are caused by Microsoft code
- 15 percent have unknown causes (because the memory is too corrupted to analyze)

## General troubleshooting steps

To troubleshoot Stop error messages, follow these general steps:

1. Review the Stop error code that you find in the event logs. Search online for the specific Stop error codes to see whether there are any known issues, resolutions, or workarounds for the problem.
2. As a best practice, we recommend that you do the following:

    a. Make sure that you install the latest Windows updates, cumulative updates, and rollup updates. To verify the update status, refer to the appropriate update history for your system:
    
    - [Windows 10, version 1803](https://support.microsoft.com/help/4099479)
    - [Windows 10, version 1709](https://support.microsoft.com/help/4043454)
    - [Windows 10, version 1703](https://support.microsoft.com/help/4018124)
    - [Windows Server 2016 and Windows 10, version 1607](https://support.microsoft.com/help/4000825)
    - [Windows 10, version 1511](https://support.microsoft.com/help/4000824)
    - [Windows Server 2012 R2 and Windows 8.1](https://support.microsoft.com/help/4009470)
    - [Windows Server 2008 R2 and Windows 7 SP1](https://support.microsoft.com/help/4009469)

    b. Make sure that the BIOS and firmware are up-to-date.

    c. Run any relevant hardware and memory tests.

3. Run the [Machine Memory Dump Collector](https://home.diagnostics.support.microsoft.com/selfhelp?knowledgebasearticlefilter=2027760&wa=wsignin1.0) Windows diagnostic package. This diagnostic tool is used to collect machine memory dump files and check for known solutions.

4. Run [Microsoft Safety Scanner](http://www.microsoft.com/security/scanner/en-us/default.aspx) or any other virus detection program that includes checks of the Master Boot Record for infections.

5. Make sure that there is sufficient free space on the hard disk. The exact requirement varies, but we recommend 10 to 15 percent free disk space.

6. Contact the respective hardware or software vendor to update the drivers and applications in the following scenarios:
  
    - The error message indicates that a specific driver is causing the problem.
    - You are seeing an indication of a service that is starting or stopping before the crash occurred. In this situation, determine whether the service behavior is consistent across all instances of the crash.
    - You have made any software or hardware changes.

    >[!NOTE]
    >If there are no updates available from a specific manufacturer, it is recommended that you disable the related service.
    >
    >To do this, see [How to perform a clean boot in Windows](https://support.microsoft.com/help/929135)
    >
    >You can disable a driver by following the steps in [How to temporarily deactivate the kernel mode filter driver in Windows](https://support.microsoft.com/help/816071).
    >
    >You may also want to consider the option of rolling back changes or reverting to the last-known working state. For more information, see [Roll Back a Device Driver to a Previous Version](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc732648(v=ws.11)).

### Memory dump collection

To configure the system for memory dump files, follow these steps:

1. [Download DumpConfigurator tool](https://codeplexarchive.blob.core.windows.net/archive/projects/WinPlatTools/WinPlatTools.zip).
2. Extract the .zip file and navigate to **Source Code** folder.
3. Run the tool DumpConfigurator.hta, and then select **Elevate this HTA**.
3. Select **Auto Config Kernel**.
4. Restart the computer for the setting to take effect. 
5. Stop and disable Automatic System Restart Services (ASR) to prevent dump files from being written. 
6. If the server is virtualized, disable auto reboot after the memory dump file is created. This lets you take a snapshot of the server in-state and also if the problem recurs.

The memory dump file is saved at the following locations.

| Dump file type | Location |
|----------------|----------|
|(none) | %SystemRoot%\MEMORY.DMP (inactive, or greyed out) |
|Small memory dump file (256kb) | %SystemRoot%\Minidump |
|Kernel memory dump file | %SystemRoot%\MEMORY.DMP |
| Complete memory dump file | %SystemRoot%\MEMORY.DMP |
| Automatic memory dump file | %SystemRoot%\MEMORY.DMP |
| Active memory dump file | %SystemRoot%\MEMORY.DMP |

You can use the Microsoft DumpChk (Crash Dump File Checker) tool to verify that the memory dump files are not corrupted or invalid. For more information, see the following video: 

>[!video https://www.youtube.com/embed/xN7tOfgNKag]

More information on how to use Dumpchk.exe to check your dump files:

-	[Using DumpChk]( https://docs.microsoft.com/windows-hardware/drivers/debugger/dumpchk)
-	[Download DumpCheck](https://developer.microsoft.com/windows/downloads/windows-10-sdk)

### Pagefile Settings

- [Introduction of page file in Long-Term Servicing Channel and Semi-Annual Channel of Windows](https://support.microsoft.com/help/4133658) 
- [How to determine the appropriate page file size for 64-bit versions of Windows](https://support.microsoft.com/help/2860880) 
- [How to generate a kernel or a complete memory dump file in Windows Server 2008 and Windows Server 2008 R2](https://support.microsoft.com/help/969028)

### Memory dump analysis

Finding the root cause of the crash may not be easy. Hardware problems are especially difficult to diagnose because they may cause erratic and unpredictable behavior that can manifest itself in a variety of symptoms.

When a Stop error occurs, you should first isolate the problematic components, and then try to cause them to trigger the Stop error again. If you can replicate the problem, you can usually determine the cause.

You can use the tools such as Windows Software Development KIT (SDK) and Symbols to diagnose dump logs.

## Video resources

The following videos illustrate various troubleshooting techniques on analyzing dump file.

- [Analyze Dump File](https://www.youtube.com/watch?v=s5Vwnmi_TEY)

- [Installing Debugging Tool for Windows (x64 and x86)](https://channel9.msdn.com/Shows/Defrag-Tools/Defrag-Tools-Building-your-USB-thumbdrive/player#time=22m29s:paused)

- [Debugging kernel mode crash memory dumps](https://channel9.msdn.com/Shows/Defrag-Tools/DefragTools-137-Debugging-kernel-mode-dumps)

- [Special Pool](https://www.youtube.com/watch?v=vHXYS9KdU1k)

 
## Advanced troubleshooting using Driver Verifier

We estimate that about 75 percent of all Stop errors are caused by faulty drivers. The Driver Verifier tool provides several methods to help you troubleshoot. These include running drivers in an isolated memory pool (without sharing memory with other components), generating extreme memory pressure, and validating parameters. If the tool encounters errors in the execution of driver code, it proactively creates an exception to let that part of the code be examined further.

>[!WARNING]
>Driver Verifier consumes lots of CPU and can slow down the computer significantly. You may also experience additional crashes. Verifier disables faulty drivers after a Stop error occurs, and continues to do this until you can successfully restart the system and access the desktop. You can also expect to see several dump files created.
>
>Don’t try to verify all the drivers at one time. This can degrade performance and make the system unusable. This also limits the effectiveness of the tool.

Use the following guidelines when you use Driver Verifier:  

- Test any “suspicious” drivers (drivers that were recently updated or that are known to be problematic).
- If you continue to experience non-analyzable crashes, try enabling verification on all third-party and unsigned drivers.
- Enable concurrent verification on groups of 10 to 20 drivers.
- Additionally, if the computer cannot boot into the desktop because of Driver Verifier, you can disable the tool by starting in Safe mode. This is because the tool cannot run in Safe mode.

For more information, see [Driver Verifier](https://docs.microsoft.com/windows-hardware/drivers/devtest/driver-verifier).

## Common Windows Stop errors

This section doesn't contain a list of all error codes, but since many error codes have the same potential resolutions, your best bet is to follow the steps below to troubleshoot your error.

The following table lists general troubleshooting procedures for common Stop error codes.

Stop error message and code | Mitigation
--- | ---
VIDEO_ENGINE_TIMEOUT_DETECTED or VIDEO_TDR_TIMEOUT_DETECTED<br>Stop error code 0x00000141, or 0x00000117 | Contact the vendor of the listed display driver to get an appropriate update for that driver.
DRIVER_IRQL_NOT_LESS_OR_EQUAL <br>Stop error code 0x0000000D1 | Apply the latest updates for the driver by applying the latest cumulative updates for the system through the Microsoft Update Catalog website.Update an outdated NIC driver. Virtualized VMware systems often run “Intel(R) PRO/1000 MT Network Connection” (e1g6032e.sys). This driver is available at [http://downloadcenter.intel.com](http://downloadcenter.intel.com). Contact the hardware vendor to update the NIC driver for a resolution. For VMware systems, use the VMware integrated NIC driver (types VMXNET or VMXNET2 , VMXNET3 can be used) instead of Intel e1g6032e.sys.
PAGE_FAULT_IN_NONPAGED_AREA <br>Stop error code 0x000000050 | If a driver is identified in the Stop error message, contact the manufacturer for an update.If no updates are available, disable the driver, and monitor the system for stability. Run Chkdsk /f /r to detect and repair disk errors. You must restart the system before the disk scan begins on a system partition. Contact the manufacturer for any diagnostic tools that they may provide for the hard disk subsystem. Try to reinstall any application or service that was recently installed or updated. It's possible that the crash was triggered while the system was starting applications and reading the registry for preference settings. Reinstalling the application can fix corrupted registry keys.If the problem persists, and you have run a recent system state backup, try to restore the registry hives from the backup.
SYSTEM_SERVICE_EXCEPTION <br>Stop error code c000021a {Fatal System Error} The Windows SubSystem system process terminated unexpectedly with a status of 0xc0000005. The system has been shut down. | Use the System File Checker tool to repair missing or corrupted system files. The System File Checker lets users scan for corruptions in Windows system files and restore corrupted files.  For more information, see [Use the System File Checker tool](https://support.microsoft.com/en-us/help/929833/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files).
NTFS_FILE_SYSTEM <br>Stop error code 0x000000024 | This Stop error is commonly caused by corruption in the NTFS file system or bad blocks (sectors) on the hard disk. Corrupted drivers for hard disks (SATA or IDE) can also adversely affect the system's ability to read and write to disk. Run any hardware diagnostics that are provided by the manufacturer of the storage subsystem. Use the scan disk tool to verify that there are no file system errors. To do this, right-click the drive that you want to scan, select Properties, select Tools, and then select the Check now button.We also suggest that you update the NTFS file system driver (Ntfs.sys), and apply the latest cumulative updates for the current operating system that is experiencing the problem. 
KMODE_EXCEPTION_NOT_HANDLED <br>Stop error code 0x0000001E | If a driver is identified in the Stop error message, disable or remove that driver. Disable or remove any drivers or services that were recently added. <br><br>If the error occurs during the startup sequence, and the system partition is formatted by using the NTFS file system, you might be able to use Safe mode to disable the driver in Device Manager. To do this, follow these steps:<br><br>Go to **Settings > Update &amp; security > Recovery**. Under **Advanced startup**, select **Restart now**. After your PC restarts to the **Choose an option** screen, select **Troubleshoot &gt; Advanced options &gt; Startup Settings &gt; Restart**. After the computer restarts, you'll see a list of options. Press **4** or **F4** to start the computer in Safe mode. Or, if you intend to use the Internet while in Safe mode, press **5** or **F5** for the Safe Mode with Networking option.
DPC_WATCHDOG_VIOLATION <br>Stop error code 0x00000133 | This Stop error code is caused by a faulty driver that does not complete its work within the allotted time frame in certain conditions. To enable us to help mitigate this error, collect the memory dump file from the system, and then use the Windows Debugger to find the faulty driver. If a driver is identified in the Stop error message, disable the driver to isolate the problem. Check with the manufacturer for driver updates. Check the system log in Event Viewer for additional error messages that might help identify the device or driver that is causing Stop error 0x133. Verify that any new hardware that is installed is compatible with the installed version of Windows. For example, you can get information about required hardware at Windows 10 Specifications. If Windows Debugger is installed, and you have access to public symbols, you can load the c:\windows\memory.dmp file into the Debugger, and then refer to [Determining the source of Bug Check 0x133 (DPC_WATCHDOG_VIOLATION) errors on Windows Server 2012](https://blogs.msdn.microsoft.com/ntdebugging/2012/12/07/determining-the-source-of-bug-check-0x133-dpc_watchdog_violation-errors-on-windows-server-2012/) to find the problematic driver from the memory dump.  
USER_MODE_HEALTH_MONITOR <br>Stop error code 0x0000009E		| This Stop error indicates that a user-mode health check failed in a way that prevents graceful shutdown. Therefore, Windows restores critical services by restarting or enabling application failover to other servers. The Clustering Service incorporates a detection mechanism that may detect unresponsiveness in user-mode components.<br>This Stop error usually occurs in a clustered environment, and the indicated faulty driver is RHS.exe.Check the event logs for any storage failures to identify the failing process.Try to update the component or process that is indicated in the event logs. You should see the following event recorded:<br>Event ID: 4870<br>Source: Microsoft-Windows-FailoverClustering<br>Description: User mode health monitoring has detected that the system is not being responsive. The Failover cluster virtual adapter has lost contact with the Cluster Server process with a process ID ‘%1’, for ‘%2’ seconds. Recovery action will be taken. Review the Cluster logs to identify the process and investigate which items might cause the process to hang. <br />For more information, see ["Why is my Failover Clustering node blue screening with a Stop 0x0000009E?"](https://blogs.technet.microsoft.com/askcore/2009/06/12/why-is-my-failover-clustering-node-blue-screening-with-a-stop-0x0000009e) Also, see the following Microsoft video [What to do if a 9E occurs](https://www.youtube.com/watch?v=vOJQEdmdSgw).



## References

- [Bug Check Code Reference](https://docs.microsoft.com/windows-hardware/drivers/debugger/bug-check-code-reference2)
