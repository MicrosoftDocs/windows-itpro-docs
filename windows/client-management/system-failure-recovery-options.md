---
title: Configure system failure and recovery options in Windows
description: Learn how to configure the actions that Windows takes when a system error occurs and what the recovery options are.
ms.prod: w10
ms.topic: troubleshooting
author: Deland-Han
ms.localizationpriority: medium
ms.author: delhan
ms.date: 07/12/2022
ms.reviewer: dcscontentpm
manager: dansimp
---

# Configure system failure and recovery options in Windows

This article describes how to configure the actions that Windows takes when a system error (also referred to as a bug check, system crash, fatal system error, or Stop error) occurs. You can configure the following actions: 

- Write an event to the System log.

- Alert administrators (if you've set up administrative alerts).

- Put system memory into a file that advanced users can use for debugging.

- Automatically restart the computer.

>[!Note]
> You must be logged on as an administrator or a member of the Administrators group to complete this procedure. If your computer is connected to a network, network policy settings may prevent you from completing this procedure.

## Configuring system failure and recovery options

> [!IMPORTANT]  
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/help/322756) in case problems occur.

The options are available in the **Startup and Recovery** dialog box. You can also use the following methods:

- Modify the values under the following registry subkey:

  **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl**

- To modify the option on your local computer, use the command line utility (Wmic.exe) to access Windows Management Instrumentation (WMI).

Follow these steps to view the options in **Startup and Recovery**. (The registry value and Wmic commands are also listed for each option.)

1. In Control Panel, select **System and Security > System**.

2. Select **Advanced system settings**, select the **Advanced** tab, and select **Settings** in the **Startup and Recovery** area.

### Under "System failure"

Select the check boxes for the actions that you want Windows to perform when a system error occurs.

#### Write an event to the System log

This option specifies that event information is recorded in the System log. By default, this option is turned on. 

To turn off this option, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set WriteToSystemLog = False
  ```

- Set the **LogEvent** DWORD value to **0**.

#### Send an administrative alert

The option specifies that administrators are notified of the system error if you configured administrative alerts. By default, this option is turned on. 

To turn off this option, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set SendAdminAlert = False
  ```

- Set the **SendAlert** DWORD value to **0**.

#### Automatically restart

The option specifies that Windows automatically restarts your computer. By default, this option is turned on. 

To turn off this option, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set AutoReboot = False
  ```

- Set the **AutoReboot** DWORD value to **0**.

### Under "Write debugging information"

Select one of the following type of information that you want Windows to record in a memory dump file if the computer stops unexpectedly:

#### (none) 

The option doesn't record any information in a memory dump file.

To specify that you don't want Windows to record information in a memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugInfoType = 0
  ```
- Set the **CrashDumpEnabled** DWORD value to **0**.

#### Small Memory Dump

The option records the smallest amount of information to help identify the problem. This option requires a paging file of at least 2 megabytes (MB) on the boot volume of your computer, and specifies that Windows will create a new file each time the system stops unexpectedly. A history of these files is stored in the folder that is listed under Small Dump Directory (%SystemRoot%\Minidump). In Windows XP and Windows Server 2003, the small memory dump file is used together with the Windows Error Reporting feature. 

To specify that you want to use a small memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugInfoType = 3
  ```

- Set the **CrashDumpEnabled** DWORD value to **3**.

To specify that you want to use a folder as your Small Dump Directory, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set MiniDumpDirectory = <folderpath>
  ```

- Set the **MinidumpDir** Expandable String Value to \<folderpath\>.

#### Kernel Memory Dump

The option records only kernel memory. This option stores more information than a small memory dump file, but it takes less time to complete than a complete memory dump file. The file is stored in %SystemRoot%\Memory.dmp by default, and any previous kernel or complete memory dump files are overwritten if the **Overwrite any existing file** check box is selected. If you set this option, you must have a sufficiently large paging file on the boot volume. The required size depends on the amount of RAM in your computer. However, the maximum amount of space that must be available for a kernel memory dump on a 32-bit system is 2 GB plus 16 MB. On a 64-bit system, the maximum amount of space that must be available for a kernel memory dump is the size of the RAM plus 128 MB. The following table provides guidelines for the size of the paging file:

|RAM size	|Paging file should be no smaller than|
|-------|-----------------|
|256 MB–1,373 MB	|1.5 times the RAM size|
|1,374 MB or greater	|32-bit system: 2 GB plus 16 MB <br /> 64-bit system: size of the RAM plus 128 MB|

To specify that you want to use a kernel memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugInfoType = 2
  ```

- Set the **CrashDumpEnabled** DWORD value to **2**.

To specify that you want to use a file as your memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugFilePath = <filepath>
  ```

- Set the **DumpFile** Expandable String Value to \<filepath\>.

To specify that you don't want to overwrite any previous kernel or complete memory dump files, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set OverwriteExistingDebugFile = 0
  ```

- Set the **Overwrite** DWORD value to **0**.

#### Complete Memory Dump

The option records the contents of system memory when the computer stops unexpectedly. This option isn't available on computers that have 2 or more GB of RAM. If you select this option, you must have a paging file on the boot volume that is sufficient to hold all the physical RAM plus 1 MB. The file is stored as specified in %SystemRoot%\Memory.dmp by default.

The extra megabyte is required for a complete memory dump file because Windows writes a header in addition to dumping the memory contents. The header contains a crash dump signature and specifies the values of some kernel variables. The header information doesn't require a full megabyte of space, but Windows sizes your paging file in increments of megabytes.

To specify that you want to use a complete memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugInfoType = 1
  ```

- Set the **CrashDumpEnabled** DWORD value to **1**.

To specify that you want to use a file as your memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugFilePath = <filepath>
  ```

- Set the DumpFile Expandable String Value to \<filepath\>.

To specify that you don't want to overwrite any previous kernel or complete memory dump files, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set OverwriteExistingDebugFile = 0
  ```

- Set the **Overwrite** DWORD value to **0**.

#### Automatic Memory Dump

This is the default option. An Automatic Memory Dump contains the same information as a Kernel Memory Dump. The difference between the two is in the way that Windows sets the size of the system paging file. If the system paging file size is set to **System managed size**, and the kernel-mode crash dump is set to **Automatic Memory Dump**, then Windows can set the size of the paging file to less than the size of RAM. In this case, Windows sets the size of the paging file large enough to ensure that a kernel memory dump can be captured most of the time.

If the computer crashes and the paging file is not large enough to capture a kernel memory dump, Windows increases the size of the paging file to at least the size of RAM. For more information, see [Automatic Memory Dump](/windows-hardware/drivers/debugger/automatic-memory-dump).

To specify that you want to use an automatic memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugInfoType = 7
  ```

- Set the **CrashDumpEnabled** DWORD value to **7**.

To specify that you want to use a file as your memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugFilePath = <filepath>
  ```

- Set the **DumpFile** Expandable String Value to \<filepath\>.

To specify that you don't want to overwrite any previous kernel or complete memory dump files, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set OverwriteExistingDebugFile = 0
  ```

- Set the **Overwrite** DWORD value to **0**.

#### Active Memory Dump

An Active Memory Dump is similar to a Complete Memory Dump, but it filters out pages that are not likely to be relevant to troubleshooting problems on the host machine. Because of this filtering, it is typically significantly smaller than a Complete Memory Dump.

This dump file includes any memory allocated to user-mode applications. It also includes memory allocated to the Windows kernel and hardware abstraction layer, as well as memory allocated to kernel-mode drivers and other kernel-mode programs. The dump includes active pages mapped into the kernel or user space that are useful for debugging, as well as selected Pagefile-backed Transition, Standby, and Modified pages such as the memory allocated with VirtualAlloc or page-file-backed sections. Active dumps do not include pages on the free and zeroed lists, the file cache, guest VM pages, and various other types of memory that are not likely to be useful during debugging. For more information, see [Active Memory Dump](/windows-hardware/drivers/debugger/active-memory-dump).

To specify that you want to use an active memory dump file, modify the registry value:

- Set the **CrashDumpEnabled** DWORD value to **1**.
- Set the **FilterPages** DWORD value to **1**.

To specify that you want to use a file as your memory dump file, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set DebugFilePath = <filepath>
  ```

- Set the DumpFile Expandable String Value to \<filepath\>.

To specify that you don't want to overwrite any previous kernel or complete memory dump files, run the following command or modify the registry value:

- ```cmd
  wmic recoveros set OverwriteExistingDebugFile = 0
  ```

- Set the **Overwrite** DWORD value to **0**.

>[!Note]
>If you contact Microsoft Support about a Stop error, you might be asked for the memory dump file that is generated by the Write Debugging Information option. 

To view system failure and recovery settings for your local computer, type **wmic recoveros** at a command prompt, and then press Enter. To view system failure and recovery settings for a remote computer on your local area network, type **wmic /node:<computer_name> recoveros** at a command prompt, and then press Enter. 

>[!Note]
>To successfully use these Wmic.exe command line examples, you must be logged on by using a user account that has administrative rights on the computer. If you are not logged on by using a user account that has administrative rights on the computer, use the **/user:user_name** and **/password:password** switches.


### Tips

- To take advantage of the dump file feature, your paging file must be on the boot volume. If you've moved the paging file to another volume, you must move it back to the boot volume before you use this feature.

- If you set the Kernel Memory Dump or the Complete Memory Dump option, and you select the **Overwrite any existing file** check box, Windows always writes to the same file name. To save individual dump files, click to clear the **Overwrite any existing file** check box, and then change the file name after each Stop error.

- You can save some memory if you click to clear the **Write an event to the system log** and **Send an administrative alert** check boxes. The memory that you save depends on the computer, but these features typically require about 60-70 KB.

## References

[Varieties of Kernel-Mode Dump Files](/windows-hardware/drivers/debugger/varieties-of-kernel-mode-dump-files)
