---
title: How to Change the Cache Size and the Drive Letter Designation
description: How to Change the Cache Size and the Drive Letter Designation
author: dansimp
ms.assetid: e7d7b635-079e-41aa-a5e6-655f33b4e317
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Change the Cache Size and the Drive Letter Designation


You can change the cache size and drive letter designation directly from the **Application Virtualization** node in the Application Virtualization Client Management Console.

**Note**  
After the cache size has been set, it cannot be made smaller.

 

**To change the cache size**

1.  Right-click the **Application Virtualization** node, and select **Properties** from the pop-up menu.

2.  Select the **File System** tab on the **Properties** dialog box. In the **Client Cache Configuration Settings** section, click one of the following radio buttons to choose how to manage the cache space:

    **Important**  
    If you select the **Use free disk space threshold** setting, the value you enter will set the cache size to the total disk size minus the free disk space threshold number you entered. If you then want revert to using the **Use maximum cache size** setting, you must specify a larger number than the existing cache size. Otherwise, the error “New size must be larger than the existing cache size” will appear.

     

    -   **Use maximum cache size**

        Enter a numeric value from 100 to 1,048,576 (1 TB) in the **Maximum size (MB)** field to specify the maximum size of the cache. The value shown in **Reserved Cache Size** indicates the amount of cache in use.

    -   **Use free disk space threshold**

        Enter a numeric value to specify the amount of free disk space, in MB, that the cache must leave available on the disk. This allows the cache to grow until the amount of free disk space reaches this limit. The value shown in **Free disk space remaining** indicates how much disk space is unused.

3.  Click **OK** or **Apply** to change the setting.

**To change the drive letter designation**

1.  Right-click the **Application Virtualization** node, and select **Properties** from the pop-up menu.

2.  On the **File System** tab in the **Properties** dialog box, in the **Drive to use** field, select the desired drive letter from the drop-down list of available drive letters. This setting becomes effective when the computer is rebooted.

3.  Click **OK** or **Apply** to change the setting.

## Related topics


[How to Configure the Client in the Application Virtualization Client Management Console](how-to-configure-the-client-in-the-application-virtualization-client-management-console.md)

 

 





