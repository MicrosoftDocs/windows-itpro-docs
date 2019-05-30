---
title: App-V Desktop Client Security
description: App-V Desktop Client Security
author: dansimp
ms.assetid: 216b9c16-7bb4-4f94-b9d8-810501285008
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# App-V Desktop Client Security


The App-V Desktop Client provides many security enhancements that were not available in previous versions of the product. These changes provide higher levels of security by default and through configuration of the client settings.

**Note**  
When you install the App-V Desktop Client on a computer, the software defaults to the most secure settings. However, when upgrading, the previous settings of the client persist.

 

By default, the App-V Desktop Client is configured only with the permissions required to allow a non-administrative user to perform a publishing refresh and stream applications. Additional security enhancements provided in the App-V Desktop Client include the following:

-   By default, an OSD cache update is allowed only by the publishing refresh process.

-   The log file (`sftlog.txt`) is accessible only by accounts with local administrative access to the client.

-   The log file now has a maximum size.

-   The log files are managed through archive settings.

-   System Event logging is now performed.

## Permissions


After you install the Desktop Client, you can configure other security settings through the MMC, or on an individual client by using the registry or the ADM Template provided by Microsoft. The App-V Desktop Client has permissions that you can set to restrict non-administrative users from accessing all the features of the Desktop Client. For a full list of permissions, please see the App-V Client Help file or App-V Operations Guide.

**Important**  
Carefully consider the consequences of changing access rights, especially on systems that are shared by multiple users, such as Terminal Servers.

 

**Note**  
If users in the environment have local administrator privileges for their computers, the permissions are ignored.

 

### ADM Template

Microsoft Application Virtualization (App-V) introduces an ADM Template that you can use to configure the most common client settings through Group Policies. This template enables administrators to implement and change many of the client settings through a centralized administration model. Some of the settings available in the ADM Template are security settings.

**Important**  
When using the ADM Template, remember that the settings are Group Policy preference settings and not fully managed Group Policies.

 

For a full description of the ADM Template, the specific settings, and guidance to successfully deploy clients in your environment, see the App-V ADM Template white paper at [https://go.microsoft.com/fwlink/LinkId=122063](https://go.microsoft.com/fwlink/?LinkId=122063).

## Removing OSD File Type Associations


If your organization does not require users to open applications directly from an OSD file, you can enhance security by removing the file type associations on the client. Remove the `HKEY_CURRENT_USERS` keys for OSD and `Softgird.osd.file` by using the registry editor. You can put this process into a logon script or into a post-installation script to automate these changes.

 

 





