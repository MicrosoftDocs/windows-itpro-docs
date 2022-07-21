--- 
title: Advanced troubleshooting for Windows freezes
description: Learn how to troubleshoot computer freeze issues on Windows-based computers and servers. Also, you can learn how to diagnose, identify, and fix these issues.
ms.prod: w10 
ms.technology: windows
ms.topic: troubleshooting 
author: aczechowski
ms.author: aaroncz
manager: dougeby
ms.reviewer: 
ms.localizationpriority: medium 
ms.collection: highpri
--- 

# Advanced troubleshooting for Windows freezes

This article describes how to troubleshoot freeze issues on Windows-based computers and servers. It also provides methods for collecting data that will help administrators or software developers diagnose, identify, and fix these issues.

> [!NOTE]
> The third-party products that this article discusses are manufactured by companies that are independent of Microsoft. Microsoft makes no warranty, implied or otherwise, about the performance or reliability of these products.

## Identify the problem

- Which computer is freezing? For example, the affected computer is a physical server or a virtual server.
- What operation happened when it froze? For example, this issue occurs when you shut down.
- How often do the errors occur? For example, this issue occurs every night at 7 PM.
- On how many computers does this freeze occur? For example, all computers or only one computer.

## Troubleshoot the freeze issues

To troubleshoot the freeze issues, check the current status of your computer, and follow one of the following methods.

### For the computer that's still running in a frozen state

If the physical computer or the virtual machine is still freezing, use one or more of the following methods for troubleshooting:

- Try to access the computer through a remote desktop connection.
- Use a domain account or local administrator account to sign in to the computer with the hardware manufacturer's remote access solution. For example, Dell Remote Access Card (DRAC), HP Integrated Lights-Out (iLo), or IBM Remote supervisor adapter (RSA).
- Test ping to the computer. Look for dropped packets and high network latency.
- Access administrative shares, for example `\\ServerName\c$`.
- Press **Ctrl** + **Alt** + **Delete** and check the response.
- Try to use Windows remote administration tools. For example, Computer Management, Server Manager, and Wmimgmt.msc.

### For the computer that's no longer frozen

If the physical computer or virtual machine froze, but is now running in a good state, use one or more of the following methods for troubleshooting.

#### For a physical computer

- Review the System and Application logs from the computer that's having the issue. Check the event logs for the relevant Event ID:

  - Application event log: Application Error, which suggests a crash or relevant system process
  - System Event logs, Service Control Manager Error event IDs for critical system services
  - Error Event IDs 2019/2020 with source Srv/Server

- Generate a System Diagnostics report by running `perfmon /report`.

#### For a virtual machine

- Review the System and Application logs from the computer that is having the issue.
- Generate a System Diagnostics report by running `perfmon /report`.
- Check the system's history in virtual management monitoring tools.

## Collect data for the freeze issues

To collect data for a server freeze, check the following table, and use one or more of the suggested methods.

|Computer type and state    |Data collection method |
|-------------------------|--------------------|
|A physical computer that's running in a frozen state|[Use a memory dump file to collect data](#use-memory-dump-to-collect-data-for-the-physical-computer-thats-running-in-a-frozen-state). Or use method 2, 3, or 4. These methods are listed later in this section.|
|A physical computer that is no longer frozen|Use method 1, 2, 3, or 4. These methods are listed later in this section. And [use Pool Monitor to collect data](#use-pool-monitor-to-collect-data-for-the-physical-computer-that-is-no-longer-frozen).|
|A virtual machine that's running in a frozen state|Hyper-V or VMware: [Use a memory dump file to collect data for the virtual machine that's running in a frozen state](#use-memory-dump-to-collect-data-for-the-virtual-machine-thats-running-in-a-frozen-state). <br /> XenServer: Use method 1, 2, 3, or 4. These methods are listed later in this section.|
|A virtual machine that is no longer frozen|Use method 1, 2, 3, or 4. These methods are listed later in this section.|

### Method 1: Memory dump

> [!IMPORTANT]
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/topic/how-to-back-up-and-restore-the-registry-in-windows-855140ad-e318-2a13-2829-d428a2ab0692) in case problems occur.

A complete memory dump file records all the contents of system memory when the computer stops unexpectedly. A complete memory dump file may contain data from processes that were running when the memory dump file was collected.

If the computer is no longer frozen and now is running in a good state, use the following steps to enable memory dump so that you can collect memory dump when the freeze issue occurs again. If the virtual machine is still running in a frozen state, use the following steps to enable and collect memory dump.

> [!NOTE]
> If you have a restart feature that's enabled on the computer, such as the Automatic System Restart (ASR) feature in Compaq computers, disable it. This setting is usually found in the BIOS. With this feature enabled, if the BIOS doesn't detect a heartbeat from the operating system, it will restart the computer. The restart can interrupt the dump process.

1. Make sure that the computer is set up to get a complete memory dump file.

    1. Go to **Run** and enter `Sysdm.cpl`, and then press enter.

    1. In **System Properties**, on the **Advanced** tab, select **Performance** \> **Settings** \> **Advanced**. Select **Change** to check or change the virtual memory.

    1. Go back to **System Properties** \> **Advanced** \> **Settings** in **Startup and Recovery**.

    1. In the **Write Debugging Information** section, select **Complete Memory Dump**.

    1. Select **Overwrite any existing file**.

    1. Make sure that there's a paging file (pagefile.sys) on the system drive and that it's at least 100 MB over the installed RAM (Initial and Maximum Size).

    1. Make sure that there's more available space on the system drive than there's physical RAM.

1. To allow the system to generate a dump file by using the keyboard, enable the `CrashOnCtrlScroll` registry value.

    1. Open the Registry Editor, and then locate the following registry keys:

        - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters`

        - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters`

    1. Create the following `CrashOnCtrlScroll` registry entry in the two registry keys:

        - **Value Name**: `CrashOnCtrlScroll`
        - **Data Type**: `REG_DWORD`
        - **Value**: `1`

    1. Close the Registry Editor and restart the computer.

1. On some physical computers running earlier versions of Windows, you may generate a nonmakeable interruption (NMI) from a web interface feature such as DRAC, iLo, or RSA. However, by default, this setting will stop the system without creating a memory dump.

    > [!NOTE]
    > For currently supported versions of Windows, the `NMICrashDump` registry key is no longer required. An NMI causes a [Stop error that follows a memory dump data collection](/troubleshoot/windows-client/performance/nmi-hardware-failure-error).

1. When the computer exhibits the problem, hold down the right **Ctrl** key, and press the **Scroll Lock** key two times to generate a memory dump file.

    > [!NOTE]
    > By default, the dump file is located in the following path: `%SystemRoot%\MEMORY.DMP`

### Method 2: Data sanity check

Use the Dump Check Utility (Dumpchk.exe) to read a memory dump file. It can also verify that the file was created correctly and isn't corrupted or invalid.

- [Using DumpChk](/windows-hardware/drivers/debugger/dumpchk)
- [Download DumpChk](https://developer.microsoft.com/windows/downloads/windows-10-sdk)

Learn how to use Dumpchk.exe to check your dump files:

> [!VIDEO https://www.youtube.com/embed/xN7tOfgNKag]

### Method 3: Performance Monitor

You can use Windows Performance Monitor to examine how programs that you run affect your computer's performance, both in real time and by collecting log data for later analysis. To create performance counter and event trace log collections on local and remote systems, run the following commands in a command prompt as administrator:

```command
Logman create counter LOGNAME_Long -u DOMAIN\USERNAME * -f bincirc -v mmddhhmm -max 500 -c "\\COMPUTERNAME\LogicalDisk(*)\*" "\\COMPUTERNAME\Memory\*" "\\COMPUTERNAME\Network Interface(*)\*" "\\COMPUTERNAME\Paging File(*)\*" "\\COMPUTERNAME\PhysicalDisk(*)\*" "\\COMPUTERNAME\Process(*)\*" "\\COMPUTERNAME\Redirector\*" "\\COMPUTERNAME\Server\*" "\\COMPUTERNAME\System\*" "\\COMPUTERNAME\Terminal Services\*" "\\COMPUTERNAME\Processor(*)\*" "\\COMPUTERNAME\Cache\*" -si 00:05:00
```

```command
Logman create counter LOGNAME_Short -u DOMAIN\USERNAME * -f bincirc -v mmddhhmm -max 500 -c "\\COMPUTERNAME\LogicalDisk(*)\*" "\\COMPUTERNAME\Memory\*" "\\COMPUTERNAME\Network Interface(*)\*" "\\COMPUTERNAME\Paging File(*)\*" "\\COMPUTERNAME\PhysicalDisk(*)\*" "\\COMPUTERNAME\Process(*)\*" "\\COMPUTERNAME\Redirector\*" "\\COMPUTERNAME\Server\*" "\\COMPUTERNAME\System\*" "\\COMPUTERNAME\Terminal Services\*" "\\COMPUTERNAME\Processor(*)\*" "\\COMPUTERNAME\Cache\*" -si 00:00:10
```

Then, you can start or stop the log by running the following commands:

```command
logman start LOGNAME_Long / LOGNAME_Short
logman stop LOGNAME_Long / LOGNAME_Short
```

The Performance Monitor log is located in the path: `C:\PERFLOGS`

### Other methods to collect data

#### Use memory dump to collect data for the physical computer that's running in a frozen state

> [!WARNING]
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/topic/how-to-back-up-and-restore-the-registry-in-windows-855140ad-e318-2a13-2829-d428a2ab0692) in case problems occur.

If the physical computer is still running in a frozen state, follow these steps to enable and collect memory dump:

1. Make sure that the computer is set up to get a complete memory dump file and that you can access it through the network.

    > [!NOTE]
    > If it isn't possible to access the affected computer through the network, try to generate a memory dump file through NMI. The result of the action may not collect a memory dump file if some of the following settings aren't qualified.

    1. Try to access the desktop of the computer by any means.

        > [!NOTE]
        > In case accessing the OS isn't possible, try to remotely access Registry Editor on the computer. You can then check the type of memory dump file and page file with which the computer is currently configured.

    1. From a remote computer that's preferably in the same network and subnet, go to **Registry Editor** \> **Connect Network Registry**. Then, connect to the affected computer, and verify the following settings:

        - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl\CrashDumpEnabled`

            Make sure that the [CrashDumpEnabled](/previous-versions/windows/it-pro/windows-2000-server/cc976050(v=technet.10)) registry entry is `1`.

        - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl\NMICrashDump`

            On some physical servers, if the NMICrashDump registry entry exists and its value is `1`, you may take advantage of the NMI from the remote management provider such as DRAC, iLo, and RSA.

        - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PagingFiles and ExistingPageFiles`

            If the value of the **Pagefile** registry entry is system-managed, the size won't be reflected in the registry. For example, `?:\pagefile.sys)`

            If the page file is customized, the size will be reflected in the registry, such as `?:\pagefile.sys 1024 1124`. In this example, `1024` is the initial size and `1124` is the max size.

            > [!NOTE]
            > If the size isn't reflected in the Registry, try to access an administrative share where the page file is located. For example, `\\ServerName\C$`

    1. Make sure that there's a paging file (pagefile.sys) on the system drive of the computer, and it's at least 100 MB over the installed RAM.

    1. Make sure that there's more free space on the hard disk drives of the computer than there's physical RAM.

1. Enable the **CrashOnCtrlScroll** registry value on the computer to allow the system to generate a dump file by using the keyboard.

    1. From a remote computer preferably in the same network and subnet, go to Registry Editor \> Connect Network Registry. Connect to the affected computer and locate the following registry keys:

        - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters`

        - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters`

    1. Create the following `CrashOnCtrlScroll` registry entry in the two registry keys:

        **Value Name**: `CrashOnCtrlScroll`
        **Data Type**: `REG_DWORD`
        **Value**: `1`

    1. Close the Registry Editor and restart the computer.

1. When the computer exhibits the problem, hold down the right **CTRL** key, and press the **Scroll Lock** key two times to generate a memory dump.

    > [!NOTE]
    > By default, the dump file is located in the path: `%SystemRoot%\MEMORY.DMP`

### Use Pool Monitor to collect data for the physical computer that is no longer frozen

Pool Monitor shows you the number of allocations and outstanding bytes of allocation by type of pool and the tag that is passed into calls of ExAllocatePoolWithTag.

For more information, see [Using PoolMon to Find a Kernel-Mode Memory Leak](/windows-hardware/drivers/debugger/using-poolmon-to-find-a-kernel-mode-memory-leak) and [PoolMon Examples](/windows-hardware/drivers/devtest/poolmon-examples).

### Use memory dump to collect data for the virtual machine that's running in a frozen state

Use the one of the following methods for the application on which the virtual machine is running.

#### Microsoft Hyper-V

You can also use the built-in NMI feature through a [Debug-VM](/powershell/module/hyper-v/debug-vm) cmdlet to debug and get a memory dump.

To debug the virtual machines on Hyper-V, run the following cmdlet in Windows PowerShell:

```powershell
Debug-VM -Name "VM Name" -InjectNonMaskableInterrupt -ComputerName Hostname  
```

#### VMware

You can use VMware snapshots or suspend state and extract a memory dump file equivalent to a complete memory dump file. Use VMware's [Checkpoint To Core Tool (vmss2core)](https://flings.vmware.com/vmss2core) to convert both suspend (`.vmss`) and snapshot (`.vmsn`) state files to a dump file. Then analyze the file by using the standard Windows debugging tools.

#### Citrix XenServer

The memory dump process occurs by pressing the RIGHT CTRL + SCROLL LOCK + SCROLL LOCK keyboard combination. For more information, see Method 1 of [How to Trigger a Memory Dump from a Windows Virtual Machine Running on XenServer](https://support.citrix.com/article/ctx123177) from Citrix.

## Space limitations on the system drive in Windows Server

On a Windows Server, you may not have enough free disk space to generate a complete memory dump file on the system volume.
There's a second option if the system drive doesn't have sufficient space. You can use the DedicatedDumpFile registry entry. For more information, see [Configure the destination path for a memory dump](/windows-server/administration/server-core/server-core-memory-dump#step-2-configure-the-destination-path-for-a-memory-dump).

For more information, see [How to use the DedicatedDumpFile registry value to overcome space limitations on the system drive](/archive/blogs/ntdebugging/how-to-use-the-dedicateddumpfile-registry-value-to-overcome-space-limitations-on-the-system-drive-when-capturing-a-system-memory-dump).
