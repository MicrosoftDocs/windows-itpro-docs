---
title: Troubleshooting Information for the Application Virtualization Client
description: Troubleshooting Information for the Application Virtualization Client
author: dansimp
ms.assetid: 260a8dad-847f-4ec0-b7dd-6e6bc52017ed
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Troubleshooting Information for the Application Virtualization Client


This topic includes information that you can use to troubleshoot various issues on the Application Virtualization (App-V) Client.

## Publishing Refresh Is Very Slow


If publishing refresh on a specific computer takes much longer than expected and if the client is configured to use the **IconSourceRoot** setting, determine whether **IconSourceRoot** contains a nonvalid URL. A nonvalid URL will cause very long delays during publishing refresh.

## Users Cannot Connect to the Server and Go into Disconnected Operations Mode


When you are using an App-V Management Server configured with the RTSPS protocol, if the users are unable to connect and they go into disconnected operations mode, determine whether the certificate that is being used on the server is valid. A nonvalid certificate will prevent users from connecting and will cause them to go into disconnected operations mode.

## <a href="" id="users-experience-slow-performance-when-applications-are-not-fully-cached-"></a>Users Experience Slow Performance When Applications Are Not Fully Cached


When applications are not fully cached, users might occasionally experience temporary slow or intermittent performance when they start or use the application. There are several possible reasons this can occur—for example, when the App-V Client is in the process of auto-loading an application or when an Out Of Sequence request is being processed. When the applications are fully cached, these problems will no longer occur.

## <a href="" id="error-displayed-after-an-update-is-removed-"></a>Error Displayed After an Update Is Removed


You must use the correct Windows Installer 3.1 command format to remove an update from the App-V Client, as follows:

`Msiexec /I {F82584A0-D706-4D2D-9BC1-7E6D8BE3BB0F} MSIPATCHREMOVE={BE3DD018-9A1F-40FD-9538-C0A995CBD254} /qb /l*v "Uninstall.log"`

Using the older command format `msiexec /package <GUID> /uninstall <GUID>` will cause error 6003 "Application Virtualization client could not be started".

## Error Code 0A-0000E01E Occurs When You Try to Start an Application


Error code 0A-0000E01E indicates that the sequenced application package might be corrupt. The solution is to resequence the package.

## Users Cannot Access Files They Have Created on the Q: Drive


If users save files to the **Q:** drive, they cannot retrieve them because they do not have read rights to the drive. Users should not save files to the **Q:** drive.

## User Is Prompted with a 1D1 Error


When the file streaming URL is incorrectly set in the Open Software Descriptor (OSD) file, the App-V Client returns a 1d1 error instead of a “file not found” error. This error indicates that the application start failed and the user has been forced into disconnected operations mode. Correct the file streaming URL.

## Incorrect Icons Associated with Some Applications


When an icon is to be used in a publishing operation, the App-V Client first determines whether it already has a cached copy of the icon, by looking in the icon cache for an item whose original source path matches the path of the icon given to the publishing operation. If the App-V Client finds a match, it will use the already-cached icon; otherwise, it will download the new icon into the cache. If the path to the icon is a scratch directory or if it gets reused for new icons or packages, the lookup in the cache might pick the wrong icon from a previous operation.

## Users Are Prompted for Credentials When Starting an Application


If a user attempts to start a virtual application to which the system administrator has restricted access, the user might be prompted to enter credentials. The user should type the user name and password for an account that has permission to launch the application and then press ENTER.

## Publishing Refresh Fails After Upgrading the App-V Client to Version 4.5


If the user data directory was previously placed in a non-standard location (%*AllUsersProfile*%\\Documents\\SoftGrid Client\\Users\\%*username*%), users who do not have administrator privileges on the computer will find that publishing refresh fails after the App-V Client is upgraded. During the upgrade, the App-V Client global data directory and all its subdirectories are configured with restricted access rights for administrators only. You can avoid this problem by changing the user data directory before upgrading so that it is not a subdirectory of the global data directory.

## Reboot Required After Install Failure


If the client install fails for any reason and if subsequent attempts to install the client also fail, check the Windows Installer log to see whether it shows an error “sftplay failed, error=1072”. If so, restart the computer before trying to install the client again.

## Repairing a Corrupted Virtual Application


If for any reason a virtual application package installed using a Windows Installer Package (MSI) file becomes corrupted, reinstall the package. The Repair function available in the Windows Installer will not update the user volumes.

## Related topics


[Application Virtualization Client Reference](application-virtualization-client-reference.md)

 

 





