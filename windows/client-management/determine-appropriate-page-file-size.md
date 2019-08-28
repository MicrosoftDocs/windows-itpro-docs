---
title: How to determine the appropriate page file size for 64-bit versions of Windows
description: Learn how to determine the appropriate page file size for 64-bit versions of Windows.
ms.prod: w10
ms.sitesec: library
ms.topic: troubleshooting
author: Deland-Han
ms.localizationpriority: medium
ms.author: delhan
ms.date: 8/28/2019
ms.reviewer: 
manager: dcscontentpm
---

# How to determine the appropriate page file size for 64-bit versions of Windows

In summary, page file sizing depends on the system crash dump setting requirements and the system commit charge peak usage or expected usage. Both considerations are unique to each system, even for systems that are identical to other systems. This means that page file sizing is unique to each system and cannot be generalized.

## Determine the appropriate page file size

Use the following considerations for page file sizing for all versions of Windows and Windows Server:

### Crash dump setting

If you want a crash dump file to be created during a system crash, a page file or a dedicated dump file must exist and be large enough to back the system crash dump setting. Otherwise, a system memory dump file is not created.

For more information, see [Support for system crash dumps](introduction-of-page-file.md#support-for-system-crash-dumps) section.

### Peak system commit charge

The system commit charge cannot exceed the system commit limit. This limit is the sum of physical memory (RAM) and all page files combined. If no page files exist, the system commit limit is slightly less than the physical memory installed. Peak system-committed memory usage can vary greatly between systems. Therefore, physical memory and page file sizing also varies.

### Quantity of infrequently accessed pages

The purpose of a page file is to back infrequently accessed modified pages so that they can be removed from physical memory. This provides more available space for more frequently accessed pages. The "\Memory\Modified Page List Bytes" performance counter measures, in part, the number of infrequently accessed modified pages that are destined for the hard disk. However, be aware that not all the memory on the modified page list is written out to disk. Typically, several hundred megabytes of memory remains resident on the modified list. Therefore, consider extending or adding a page file if all the following conditions are true:

- More available physical memory (\Memory\Available MBytes) is required.

- The modified page list contains a significant amount of memory.

- The existing page files are fairly full (\Paging Files(*)\% Usage).

## Support for system crash dumps

A system crash (also known as a “bug check” or a "Stop error") occurs when the system cannot run correctly. The dump file that is produced from this event is called a system crash dump. A page file or dedicated dump file is used to write a crash dump file (memory.dmp) to disk. Therefore, a page file or a dedicated dump file must be large enough to support the kind of crash dump selected. Otherwise, the system cannot create the crash dump file.

>[!Note]
>During startup, system-managed page files are sized respective to the system crash dump settings. This assumes that enough free disk space exists.

|System crash dump setting	|Minimum page file size requirement|
|-----------|-------------------|
|Small memory dump (256 KB)	|1 MB|
|Kernel memory dump	|Depends on kernel virtual memory usage|
|Complete memory dump	|1 x RAM plus 257 MB*|
|Automatic memory dump	|Depends on kernel virtual memory usage. For details, see Automatic memory dump.|

\* 1 MB of header data and device drivers can total 256 MB of secondary crash dump data.

The **Automatic memory dump** setting is enabled by default. This is a setting instead of a kind of crash dump. This setting automatically selects the best page file size, depending on the frequency of system crashes. 

The Automatic memory dump feature at first selects a small paging file size. It would accommodate the kernel memory most of the time. If the system crashes again within four weeks, the Automatic memory dump feature selects the page file size as either the RAM size or 32 GB, whichever is smaller. 

Kernel memory crash dumps require enough page file space or dedicated dump file space to accommodate the kernel mode side of virtual memory usage. If the system crashes again within four weeks of the previous crash, a Complete memory dump is selected at restart. This requires a page file or dedicated dump file of at least the size of physical memory (RAM) plus 1 MB for header information plus 256 MB for potential driver data to support all the potential data that is dumped from memory. Again, the system-managed page file will be increased to back this kind of crash dump. If the system is configured to have a page file or a dedicated dump file of a specific size, make sure that the size is sufficient to back the crash dump setting that is listed in the table earlier in this section together with and the peak system commit charge.

### Dedicated dump files

Computers that are running Microsoft Windows or Microsoft Windows Server usually must have a page file to support a system crash dump. System administrators now have the option to create a dedicated dump file instead.
A dedicated dump file is a page file that is not used for paging. Instead, it is “dedicated” to back a system crash dump file (memory.dmp) when a system crash occurs. Dedicated dump files can be put on any disk volume that can support a page file. We recommend that you use a dedicated dump file when you want a system crash dump, but you do not want a page file.

## System-managed page files

By default, page files are system managed. This means that the page files increase and decrease based on many factors, such as the amount of physical memory installed, the process of accommodating the system commit charge, and the process of accommodating a system crash dump.

For example, when the system commit charge is more than 90 percent of the system commit limit, the page file is increased to back it. This continues to occur until the page file reaches three times the size of physical memory or 4 GB, whichever is larger. This all assumes that the logical disk that is hosting the page file is large enough to accommodate the growth.

The following table lists the minimum and maximum page file sizes of system-managed page files in Windows 10.

|Minimum page file size	|Maximum page file size|
|---------------|------------------|
|Varies based on page file usage history, amount of RAM (RAM ÷ 8, max 32 GB) and crash dump settings.	|3 × RAM or 4 GB, whichever is larger.  This is then limited to the volume size ÷ 8.  However, it can grow to within 1 GB of free space on the volume if required for crash dump settings.|

## Performance counters

Several performance counters are related to page files. This section describes the counters and what they measure.

### \Memory\Page/sec and other hard page fault counters

The following performance counters measure hard page faults (which include, but are not limited to, page file reads):

- \Memory\Page/sec

- \Memory\Page Reads/sec

- \Memory\Page Inputs/sec

The following performance counters measure page file writes:

- \Memory\Page Writes/sec

- \Memory\Page Output/sec

Hard page faults are faults that must be resolved by retrieving the data from disk. Such data can include portions of DLLs, .exe files, memory-mapped files, and page files. These faults might or might not be related to a page file or to a low-memory condition. Hard page faults are a standard function of the operating system. They occur when the following items are read:

- Parts of image files (.dll and .exe files) as they are used

- Memory-mapped files

- A page file

High values for these counters (excessive paging) indicate disk access of generally 4 KB per page fault on x86 and x64 versions of Windows and Windows Server. This disk access might or might not be related to page file activity but may contribute to poor disk performance that can cause system-wide delays if the related disks are overwhelmed.

Therefore, we recommend that you monitor the disk performance of the logical disks that host a page file in correlation with these counters. Be aware that a system that has a sustained 100 hard page faults per second experiences 400 KB per second disk transfers. Most 7200 RPM disk drives can handle about 5 MB per second at an IO size of 16 KB or 800 KB per second at an IO size of 4 KB. No performance counter directly measures which logical disk the hard page faults are resolved for.

### \Paging File(*)\% Usage

The \Paging File(*)\% Usage performance counter measures the percentage of usage of each page file. 100 percent usage of a page file does not indicate a performance problem as long as the system commit limit is not reached by the system commit charge, and if a significant amount of memory is not waiting to be written to a page file.

>[!Note]
>The size of the Modified Page List (\Memory\Modified Page List Bytes) is the total of modified data that is waiting to be written to disk.

If the Modified Page List (a list of physical memory pages that are the least frequently accessed) contains a lot of memory, and if the % Usage value of all page files is greater than 90, you can make more physical memory available for more frequently access pages by increasing or adding a page file.

>[!Note]
>Not all the memory on the modified page list is written out to disk. Typically, several hundred megabytes of memory remains resident on the modified list.

## Multiple page files and disk considerations

If a system is configured to have more than one page files, the page file that responds first is the one that is used. This means that page files that are on faster disks are used more frequently. Also, putting a page file on a “fast” or “slow” disk is important only if the page file is frequently accessed and if the disk that is hosting the respective page file is overwhelmed. Be aware that actual page file usage depends greatly on the amount of modified memory that the system is managing. This means that files that already exist on disk (such as .txt, .doc, .dll, and .exe) are not written to a page file. Only modified data that does not already exist on disk (for example, unsaved text in Notepad ) is memory that could potentially be backed by a page file. After the unsaved data is saved to disk as a file, it is backed by the disk and not by a page file.
