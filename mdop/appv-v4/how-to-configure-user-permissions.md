---
title: How to Configure User Permissions
description: How to Configure User Permissions
author: dansimp
ms.assetid: 54e69f46-b028-4ad1-9b80-f06ef5c8f559
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Configure User Permissions


You can enable and disable some actions for users who do not have administrative rights by editing the key values under the **Permissions** registry key (HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Permissions). This key is primarily designed to help prevent users from making mistakes rather than to provide any special security, because users with administrative rights can edit any of these key values. The following procedures are examples of how to change the key values. For more information about the Application Virtualization (App-V) Client registry keys and values, see <https://go.microsoft.com/fwlink/?LinkId=121528>.

**To change user permissions**

1.  To enable the users to choose to run the client in offline mode, set the following key value to 1:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Permissions\\ToggleOfflineMode

2.  To enable the users to view all applications through the user interface, set the following key value to 1. Setting the value to 0 (zero) allows the users to see only the applications that are available to them.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Permissions\\ViewAllApplications

## Related topics


[How to Configure the App-V Client Registry Settings by Using the Command Line](how-to-configure-the-app-v-client-registry-settings-by-using-the-command-line.md)

[User Access Permissions in Application Virtualization Client](user-access-permissions-in-application-virtualization-client.md)

 

 





