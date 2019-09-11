---
title: How to Reset the FileSystem Cache
description: How to Reset the FileSystem Cache
author: dansimp
ms.assetid: 7777259d-8c21-4c06-9384-9599b69f9828
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Reset the FileSystem Cache


Resetting the FileSystem cache is not something that should usually be necessary. However if you need to completely reset the FileSystem cache, perhaps for troubleshooting purposes, you can use the following procedure. Administrative rights are required to perform this action.

**To reset the FileSystem cache**

1.  Set the following registry value to 0 (zero):

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\AppFS\\State

2.  Restart the computer.

## Related topics


[How to Configure the App-V Client Registry Settings by Using the Command Line](how-to-configure-the-app-v-client-registry-settings-by-using-the-command-line.md)

 

 





