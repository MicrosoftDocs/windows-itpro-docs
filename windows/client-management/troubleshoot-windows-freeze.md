--- 
title: Advanced troubleshooting for Windows-based computer freeze issues 
ms.reviewer: 
manager: dansimp
description: Learn how to troubleshoot computer freeze issues. 
ms.prod: w10 
ms.mktglfcycl: 
ms.sitesec: library 
ms.topic: troubleshooting 
author: dansimp
ms.localizationpriority: medium 
ms.author: dansimp
--- 

# Advanced troubleshooting for Windows-based computer freeze issues 

This article describes how to troubleshoot freeze issues on Windows-based computers and servers. It also provides methods for collecting data that will help administrators or software developers diagnose, identify, and fix these issues. 

> [!NOTE]
> The third-party products that this article discusses are manufactured by companies that are independent of Microsoft. Microsoft makes no warranty, implied or otherwise, about the performance or reliability of these products. 

## Identify the problem  

*   Which computer is freezing? (Example: The impacted computer is a physical server, virtual server, and so on.) 
*   What operation was being performed when the freezes occurred? (Example: This issue occurs when you shut down GUI, perform one or more operations, and so on.) 
*   How often do the errors occur? (Example: This issue occurs every night at 7 PM, every day around 7 AM, and so on.) 
*   On how many computers does this occur? (Example: All computers, only one computer, 10 computers, and so on.) 

## Troubleshoot the freeze issues  

To troubleshoot the freeze issues, check the current status of your computer, and follow one of the following methods. 

### For the computer that's still running in a frozen state 

If the physical computer or the virtual machine is still freezing, use one or more of the following methods for troubleshooting: 

*   Try to access the computer through Remote Desktop, Citrix, and so on. 
*   Use the domain account or local administrator account to log on the computer by using one of the Remote Physical Console Access features, such as Dell Remote Access Card (DRAC), HP Integrated Lights-Out (iLo), or IBM Remote supervisor adapter (RSA). 
*   Test ping to the computer. Packet dropping and high network latency may be observed. 
*   Access administrative shares (\\\\**ServerName**\\c$). 
*   Press Ctrl + Alt + Delete command and check response. 
*   Try to use Remote Admin tools such as Computer Management, remote Server Manager, and Wmimgmt.msc.   

### For the computer that is no longer frozen 

If the physical computer or virtual machine froze but is now running in a good state, use one or more of the following methods for troubleshooting.  

#### For a physical computer 

*   Review the System and Application logs from the computer that is having the issue. Check the event logs for the relevant Event ID:

    - Application event log : Application Error (suggesting Crash or relevant System Process)
    - System Event logs, Service Control Manager Error event IDs for Critical System Services
    - Error Event IDs 2019/2020 with source Srv/Server

*   Generate a System Diagnostics report by running the perfmon /report command. 

#### For a virtual machine 

*   Review the System and Application logs from the computer that is having the issue.  
*   Generate a System Diagnostics report by running the perfmon /report command. 
*   Check history in virtual management monitoring tools. 


## Collect data for the freeze issues 

To collect data for a server freeze, check the following table, and use one or more of the suggested methods. 

|Computer type and state    |Data collection method | 
|-------------------------|--------------------| 
|A physical computer that's running in a frozen state|[Use a memory dump file to collect data](#use-memory-dump-to-collect-data-for-the-physical-computer-thats-running-in-a-frozen-state). Or use method 2, 3, or 4. These methods are listed later in this section.| 
|A physical computer that is no longer frozen|Use method 1, 2, 3, or 4. These methods are listed later in this section. And [use Pool Monitor to collect data](#use-pool-monitor-to-collect-data-for-the-physical-computer-that-is-no-longer-frozen).| 
|A virtual machine that's running in a frozen state|Hyper-V or VMware: [Use a memory dump file to collect data for the virtual machine that's running in a frozen state](#use-memory-dump-to-collect-data-for-the-virtual-machine-thats-running-in-a-frozen-state). <br /> XenServer: Use method 1, 2, 3, or 4. These methods are listed later in this section.| 
|A virtual machine that is no longer frozen|Use method 1, 2, 3, or 4. These methods are listed later in this section.| 


### Method 1: Memory dump 

> [!NOTE]
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/help/322756) in case problems occur.   

A complete memory dump file records all the contents of system memory when the computer stops unexpectedly. A complete memory dump file may contain data from processes that were running when the memory dump file was collected.   

If the computer is no longer frozen and now is running in a good state, use the following steps to enable memory dump so that you can collect memory dump when the freeze issue occurs again. If the virtual machine is still running in a frozen state, use the following steps to enable and collect memory dump.   

> [!NOTE]
> If you have a restart feature that is enabled on the computer, such as the Automatic System Restart (ASR) feature in Compaq computers, disable it. This setting is usually found in the BIOS. With this feature enabled, if the BIOS doesn't detect a heartbeat from the operating system, it will restart the computer. The restart can interrupt the dump process.   


1. Make sure that the computer is set up to get a complete memory dump file. To do this, follow these steps: 

   1.  Go to **Run** and enter `Sysdm.cpl`, and then press enter.
    
   2. In **System Properties**, on the **Advanced** tab, select **Performance** \> **Settings** \> **Advanced**, and then check or change the virtual memory by clicking **Change**. 

   2.  Go back to **System Properties** \> **Advanced** \> **Settings** in **Startup and Recovery**. 

   3.  In the **Write Debugging Information** section, select **Complete Memory Dump**. 

       > [!NOTE]
       > For Windows versions that are earlier than Windows 8 or Windows Server 2012, the Complete Memory Dump type isn't available in the GUI. You have to change it in Registry Editor. To do this, change the value of the following **CrashDumpEnabled** registry entry to **1** (REG_DWORD):
       >**HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl\CrashDumpEnabled**   

   4.  Select **Overwrite any existing file**. 

   5.  Make sure that there's a paging file (pagefile.sys) on the system drive and that it’s at least 100 megabytes (MB) over the installed RAM (Initial and Maximum Size). 

       Additionally, you can use the workaround for [space limitations on the system drive in Windows Server 2008](#space-limitations-on-the-system-drive-in-windows-server-2008). 

   6.  Make sure that there's more available space on the system drive than there is physical RAM. 

2. Enable the CrashOnCtrlScroll registry value to allow the system to generate a dump file by using the keyboard. To do this, follow these steps: 

   1. Go to Registry Editor, and then locate the following registry keys: 

      *   `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters` 

      *   `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters` 

   2. Create the following CrashOnCtrlScroll registry entry in the two registry keys: 

      - **Value Name**: `CrashOnCtrlScroll`    
      - **Data Type**: `REG_DWORD`      
      - **Value**: `1`  
 
   3. Exit Registry Editor. 

   4. Restart the computer. 

3. On some physical computers, you may generate a nonmakeable interruption (NMI) from the Web Interface feature (such as DRAC, iLo, and RSA). However, by default, this setting will stop the system without creating a memory dump.   

   To allow the operating system to generate a memory dump file at an NMI interruption, set the value of the [NMICrashDump](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc783271(v=ws.10)) registry entry to `1` (REG_DWORD). Then, restart the computer to apply this change.   

   > [!NOTE]
   > This is applicable only for Windows 7, Windows Server 2008 R2, and earlier versions of Windows. For Windows 8 Windows Server 2012, and later versions of Windows, the NMICrashDump registry key is no longer required, and an NMI interruption will result in [a Stop error that follows a memory dump data collection](https://support.microsoft.com/help/2750146).   

4. When the computer exhibits the problem, hold down the right **Ctrl** key, and press the **Scroll Lock** key two times to generate a memory dump file.   

   > [!NOTE]
   > By default, the dump file is located in the following path:<br /> 
   > %SystemRoot%\MEMORY.DMP 


### Method 2: Data sanity check 

Use the Dump Check Utility (Dumpchk.exe) to read a memory dump file or verify that the file was created correctly. You can use the Microsoft DumpChk (Crash Dump File Checker) tool to verify that the memory dump files are not corrupted or invalid. 

-	[Using DumpChk]( https://docs.microsoft.com/windows-hardware/drivers/debugger/dumpchk)
-	[Download DumpCheck](https://developer.microsoft.com/windows/downloads/windows-10-sdk)

Learn how to use Dumpchk.exe to check your dump files: 

> [!video https://www.youtube-nocookie.com/embed/xN7tOfgNKag] 


### Method 3: Performance Monitor 

You can use Windows Performance Monitor to examine how programs that you run affect your computer's performance, both in real time and by collecting log data for later analysis. To create performance counter and event trace log collections on local and remote systems, run the following commands in a command prompt as administrator: 

```cmd 
Logman create counter LOGNAME_Long -u DOMAIN\USERNAME * -f bincirc -v mmddhhmm -max 500 -c "\\COMPUTERNAME\LogicalDisk(*)\*" "\\COMPUTERNAME\Memory\*" "\\COMPUTERNAME\Network Interface(*)\*" "\\COMPUTERNAME\Paging File(*)\*" "\\COMPUTERNAME\PhysicalDisk(*)\*" "\\COMPUTERNAME\Process(*)\*" "\\COMPUTERNAME\Redirector\*" "\\COMPUTERNAME\Server\*" "\\COMPUTERNAME\System\*" "\\COMPUTERNAME\Terminal Services\*" "\\COMPUTERNAME\Processor(*)\*" "\\COMPUTERNAME\Cache\*" -si 00:05:00  
``` 

```cmd 
Logman create counter LOGNAME_Short -u DOMAIN\USERNAME * -f bincirc -v mmddhhmm -max 500 -c "\\COMPUTERNAME\LogicalDisk(*)\*" "\\COMPUTERNAME\Memory\*" "\\COMPUTERNAME\Network Interface(*)\*" "\\COMPUTERNAME\Paging File(*)\*" "\\COMPUTERNAME\PhysicalDisk(*)\*" "\\COMPUTERNAME\Process(*)\*" "\\COMPUTERNAME\Redirector\*" "\\COMPUTERNAME\Server\*" "\\COMPUTERNAME\System\*" "\\COMPUTERNAME\Terminal Services\*" "\\COMPUTERNAME\Processor(*)\*" "\\COMPUTERNAME\Cache\*" -si 00:00:10  
``` 

Then, you can start or stop the log by running the following commands: 

```cmd 
logman start LOGNAME_Long / LOGNAME_Short   
logman stop LOGNAME_Long / LOGNAME_Short  
``` 

The Performance Monitor log is located in the path: C:\PERFLOGS   

### Method 4: Microsoft Support Diagnostics 

1.  In the search box of the [Microsoft Support Diagnostics Self-Help Portal](https://home.diagnostics.support.microsoft.com/selfhelp), type Windows Performance Diagnostic. 

2.  In the search results, select **Windows Performance Diagnostic**, and then click **Create**. 

3.  Follow the steps of the diagnostic. 


### Additional methods to collect data 

#### Use memory dump to collect data for the physical computer that's running in a frozen state 

> [!Warning] 
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/help/322756) in case problems occur.   

If the physical computer is still running in a frozen state, follow these steps to enable and collect memory dump: 


1. Make sure that the computer is set up to get a complete memory dump file and that you can access it through the network. To do this, follow these steps:   
   > [!NOTE]
   > If it isn't possible to access the affected computer through the network, try to generate a memory dump file through NMI interruption. The result of the action may not collect a memory dump file if some of the following settings aren't qualified.   

   1. Try to access the desktop of the computer by any means.   

      > [!NOTE]
      > In case accessing the operating system isn't possible, try to access Registry Editor on the computer remotely in order to check the type of memory dump file and page file with which the computer is currently configured.   

   2. From a remote computer that is preferably in the same network and subnet, go to **Registry Editor** \> **Connect Network Registry**. Then, connect to the concerned computer, and verify the following settings: 

      * ` `*HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl\CrashDumpEnabled`   

         Make sure that the [CrashDumpEnabled](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-2000-server/cc976050(v=technet.10)) registry entry is `1`.            

      * `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl\NMICrashDump`   

        On some physical servers, if the NMICrashDump registry entry exists and its value is `1`, you may take advantage of the NMI from the remote management capabilities (such as DRAC, iLo, and RSA). 

      * `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PagingFiles and ExistingPageFiles`   

        If the value of the **Pagefile** registry entry is system managed, the size won't be reflected in the registry (Example value: ?:\pagefile.sys).   

        If the page file is customized, the size will be reflected in the registry, such as ‘?:\pagefile.sys 1024 1124’ where 1024 is the initial size and 1124 is the max size.   

        > [!NOTE]
        > If the size isn't reflected in the Registry, try to access an Administrative share where the page file is located (such as \\\\**ServerName**\C$). 

   3. Make sure that there's a paging file (pagefile.sys) on the system drive of the computer, and it's at least 100 MB over the installed RAM. 

   4. Make sure that there's more free space on the hard disk drives of the computer than there is physical RAM. 

2. Enable the **CrashOnCtrlScroll** registry value on the computer to allow the system to generate a dump file by using the keyboard. To do this, follow these steps: 

   1.  From a remote computer preferably in the same network and subnet, go to Registry Editor \> Connect Network Registry. Connect to the concerned computer and locate the following registry keys: 

       *   `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters` 

       *   `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters` 

   2.  Create the following CrashOnCtrlScroll registry entry in the two registry keys: 

       **Value Name**: `CrashOnCtrlScroll`     
       **Data Type**: `REG_DWORD`     
       **Value**: `1`  

   3.  Exit Registry Editor. 

   4.  Restart the computer. 

3. When the computer exhibits the problem, hold down the right **CTRL** key, and press the **Scroll Lock** key two times to generate a memory dump.  
   > [!NOTE]
   > By default, the dump file is located in the path: %SystemRoot%\MEMORY.DMP 

### Use Pool Monitor to collect data for the physical computer that is no longer frozen 

Pool Monitor shows you the number of allocations and outstanding bytes of allocation by type of pool and the tag that is passed into calls of ExAllocatePoolWithTag.   

Learn [how to use Pool Monitor](https://support.microsoft.com/help/177415) and how to [use the data to troubleshoot pool leaks](http://blogs.technet.com/b/markrussinovich/archive/2009/03/26/3211216.aspx). 

### Use memory dump to collect data for the virtual machine that's running in a frozen state 

Use the one of the following methods for the application on which the virtual machine is running.   

#### Microsoft Hyper-V 

If the virtual machine is running Windows 8, Windows Server 2012, or a later version of Windows on Microsoft Hyper-V Server 2012, you can use the built-in NMI feature through a [Debug-VM](https://docs.microsoft.com/previous-versions/windows/powershell-scripting/dn464280(v=wps.630)) cmdlet to debug and get a memory dump.   

To debug the virtual machines on Hyper-V, run the following cmdlet in Windows PowerShell: 

```powershell 
Debug-VM -Name "VM Name" -InjectNonMaskableInterrupt -ComputerName Hostname  
``` 

> [!NOTE]
> This method is applicable only to Windows 8, Windows Server 2012, and later versions of Windows virtual machines. For the earlier versions of Windows, see methods 1 through 4 that are described earlier in this section.  

#### VMware 

You can use VMware Snapshots or suspend state and extract a memory dump file equivalent to a complete memory dump file. By using [Checkpoint To Core Tool (vmss2core)](https://labs.vmware.com/flings/vmss2core), you can convert both suspend (.vmss) and snapshot (.vmsn) state files to a dump file and then analyze the file by using the standard Windows debugging tools.   

#### Citrix XenServer 

The memory dump process occurs by pressing the RIGHT CTRL + SCROLL LOCK + SCROLL LOCK keyboard combination that's described in Method 1 and on [the Citrix site](http://support.citrix.com/article/ctx123177).   

## Space limitations on the system drive in Windows Server 2008 

On Windows Server 2008, you may not have enough free disk space to generate a complete memory dump file on the system volume. There's a [hotfix](https://support.microsoft.com/help/957517) that allows for the data collection even though there isn't sufficient space on the system drive to store the memory dump file.   

Additionally, on Windows Server 2008 Service Pack (SP2), there's a second option if the system drive doesn't have sufficient space. Namely, you can use the DedicatedDumpFile registry entry. To learn how to use the registry entry, see [New behavior in Windows Vista and Windows Server 2008](https://support.microsoft.com/help/969028).   

For more information, see [How to use the DedicatedDumpFile registry value to overcome space limitations on the system drive](http://blogs.msdn.com/b/ntdebugging/archive/2010/04/02/how-to-use-the-dedicateddumpfile-registry-value-to-overcome-space-limitations-on-the-system-drive-when-capturing-a-system-memory-dump.aspx).
