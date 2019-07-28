---
title: Compacting the MED-V Virtual Hard Disk
description: Compacting the MED-V Virtual Hard Disk
author: dansimp
ms.assetid: 5e6122d1-9847-4b33-adab-594919eec3c5
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Compacting the MED-V Virtual Hard Disk


Although it is optional, you can compact the virtual hard disk (VHD) to reclaim empty disk space and reduce the size of the VHD before you configure the Windows Virtual PC image.

**Important**  
Before you proceed, create a backup copy of your Windows XP image.

 

**Preparing the Virtual Hard Disk**

1.  Open your Windows XP image.

    Click **Start**, click **All Programs**, click **Windows Virtual PC**, click **Windows Virtual PC**, then double-click your Windows XP image.

2.  Clear the DLL cache.

    1.  At a command prompt in the virtual machine, type **sfc /cachesize=1**.

    2.  Restart the virtual machine.

    3.  At a command prompt in the virtual machine, type **sfc /purgecache**.

3.  Delete unnecessary files, such as uninstallers, temp files, log files, page files, shared folders, and so on.

4.  Turn off System Restore. You can also specify this step in your Sysprep.inf file.

    1.  In **Control Panel**, double-click **System**, and then select the **System Restore** tab.

    2.  Select **Turn off System Restore**, and then click **OK**.

5.  Set maximum event log sizes and clear all events.

    1.  Open the event viewer.

        Click **Start**, click **Control Panel**, double-click **Administrative Tools**, then double-click **Event Viewer**.

    2.  Right-click **Application**, and click **Properties**.

    3.  In the **Log Size** area, set **Maximum Log Size** to 512KB and then select **Overwrite events as needed**.

    4.  Click **Clear Log**. In the **Event Viewer** dialog box that appears, click **No**.

    5.  In the **Properties** window, click **OK**.

    6.  Repeat steps a through e for the **Security** and **System** logs.

6.  Run the Disk Cleanup Tool.

    Click **Start**, click **All Programs**, click **Accessories**, click **System Tools**, and then click **Disk Cleanup**.

7.  Configure your page file as needed for your applications.

    1.  In **Control Panel**, double-click **System**, and then select the **Advanced** tab.

    2.  In the **Performance** area, click **Settings**.

    3.  In the **Virtual Memory** area, click **Change**.

    4.  Configure your page file settings.

8.  Shut down the Windows XP image.

**Defragmenting and Pre-compacting the Virtual Hard Disk**

1.  In **Control Panel** on the host computer that is running Windows 7, click **Administrative Tools**, double-click **Computer Management**, then click **Disk Management**.

2.  By using the Disk Management Console, attach (mount) the virtual hard disk and then defragment the disk.

3.  By using an ISO extraction tool, extract the precompact.iso located in the \\Program Files\\Windows Virtual PC\\Integration Components folder.

4.  Use the precompact.exe program to compress the Windows XP virtual hard disk.

5.  By using the Disk Management Console, detach the virtual hard disk.

**Compacting the Virtual Hard Disk**

1.  Open Windows Virtual PC.

    Click **Start**, click **All Programs**, click **Windows Virtual PC**, then click **Windows Virtual PC**.

2.  Right-click your Windows XP image and select **Settings**.

3.  Click **Hard Disk** for the one that corresponds to your Windows XP image, and then click **Modify**.

4.  Click **Compact virtual hard disk**.

5.  Click **Compact** and then click **OK**.

Create a backup copy of your compacted virtual hard disk.

## Related topics


[Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md)

[Technical Reference for MED-V](technical-reference-for-med-v.md)

 

 





