---
title: How to Configure the App-V Client Registry Settings by Using the Command Line
description: How to Configure the App-V Client Registry Settings by Using the Command Line
author: dansimp
ms.assetid: 3e3d873f-13d2-402f-97b4-f62d0c399171
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Configure the App-V Client Registry Settings by Using the Command Line


After the Application Virtualization (App-V) Client has been deployed and configured during the installation by using the command line, it might be necessary to change one or more client configuration settings. This is accomplished by editing the appropriate registry keys, using one of the following methods:

-   Using the Registry Editor directly

-   Using a .reg file

-   Using a scripting language such as VBScript or Windows PowerShell

There is also an ADM template that you can use. For more information about the ADM template, see <https://go.microsoft.com/fwlink/?LinkId=121835>.

**Caution**  
Use care when you edit the registry because errors can leave the computer in an unusable state. Be sure to follow your standard business practices that relate to registry edits. Thoroughly test all proposed changes in a test environment before you deploy them to production computers.

 

## In This Section


**Important**  
On a 64-bit computer, the keys and values described in the following sections will be under HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\Client.

 

<a href="" id="how-to-reset-the-filesystem-cache"></a>[How to Reset the FileSystem Cache](how-to-reset-the-filesystem-cache.md)  
Provides the information that is required to reset the FileSystem cache.

<a href="" id="how-to-change-the-size-of-the-filesystem-cache"></a>[How to Change the Size of the FileSystem Cache](how-to-change-the-size-of-the-filesystem-cache.md)  
Explains how you can change the size of the cache.

<a href="" id="how-to-use-the-cache-space-management-feature"></a>[How to Use the Cache Space Management Feature](how-to-use-the-cache-space-management-feature.md)  
Describes how you can configure the cache space management feature.

<a href="" id="how-to-configure-the-client-log-file"></a>[How to Configure the Client Log File](how-to-configure-the-client-log-file.md)  
Describes the various registry key values that control the client log file and how you can change them.

<a href="" id="how-to-configure-user-permissions"></a>[How to Configure User Permissions](how-to-configure-user-permissions.md)  
Identifies the registry key that controls the user permissions and gives examples of how you can change some permissions.

<a href="" id="how-to-configure-the-client-for-application-package-retrieval"></a>[How to Configure the Client for Application Package Retrieval](how-to-configure-the-client-for-application-package-retrieval.md)  
Explains how to configure the client to retrieve package content, icons, and file type associations from different sources, and provides several examples of the correct path format.

<a href="" id="how-to-configure-the-client-for-disconnected-operation-mode"></a>[How to Configure the Client for Disconnected Operation Mode](how-to-configure-the-client-for-disconnected-operation-mode.md)  
Provides information about how to configure the various settings associated with disconnected operations mode.

<a href="" id="how-to-configure-shortcut-and-file-type-association-behavior"></a>[How to Configure Shortcut and File Type Association Behavior](how-to-configure-shortcut-and-file-type-association-behavior-46-only.md)  
Describes the registry key values that control shortcuts and file type associations in the App-V client, and provides details on how to configure them.

## Related topics


[Application Virtualization Client](application-virtualization-client.md)

 

 





