---
title: How to Change the Size of the FileSystem Cache
description: How to Change the Size of the FileSystem Cache
author: dansimp
ms.assetid: 6ed17ba3-293b-4482-b3fa-31e5f606dad6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Change the Size of the FileSystem Cache


You can change the size of the FileSystem cache by using the command line. This action requires a complete reset of the cache, and it requires administrative rights.

**To change the size of the FileSystem cache**

1.  Set the following registry value to 0 (zero):

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\AppFS\\State

2.  Set the following registry value to the maximum cache size, in MB, that is necessary to hold the packages—for example, 8192 MB:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\AppFS\\FileSize

3.  Restart the computer.

## Related topics


[How to Configure the App-V Client Registry Settings by Using the Command Line](how-to-configure-the-app-v-client-registry-settings-by-using-the-command-line.md)

 

 





