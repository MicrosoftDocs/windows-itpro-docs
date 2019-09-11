---
title: What's New in UE-V 2.0
description: What's New in UE-V 2.0
author: dansimp
ms.assetid: 5d852beb-f293-4e3a-a33b-c40df59a7515
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# What's New in UE-V 2.0


Microsoft User Experience Virtualization (UE-V) 2.0 provides these new features and functionality compared to UE-V 1.0. The [Microsoft User Experience Virtualization (UE-V) 2.0 Release Notes](microsoft-user-experience-virtualization--ue-v--20-release-notesuevv2.md) provide more information about the UE-V 2.0 release.

## Client-side cache (CSC) no longer required


This version of UE-V introduces the **sync provider**, which replaces the requirement for the Windows Offline Files feature to support a client-side cache of settings.

Whereas UE-V used to synchronize settings only when an application opened, closed, or when Windows locked or unlocked, or at logon or logoff, the sync provider also …

-   Synchronizes local application and Windows settings out-of-band using "**trigger events**"

-   Uses a **scheduled task** to sync the settings storage package in any interval you choose for your enterprise requirements (every 30 minutes by default)

Certain conditions provide more frequent synchronization.

-   Settings synchronize when the user clicks the **Sync Now** button in the new Company Settings Center application.

-   The sync provider can also start for a single application without waiting for the scheduled synchronization task. For example, when an application is closed, any settings changes are written to the local cache, and the sync provider process runs asynchronously to move those new settings changes to the settings storage location.

## Windows app synchronization


The developer of a Windows app can define which settings, if any, are to be synchronized, and these settings can now be captured and synchronized with UE-V.

By default, UE-V synchronizes the settings of many of the Windows apps included in Windows 8 and Windows 8.1. You can modify the list of synchronized apps with Windows PowerShell, Windows Management Instrumentation (WMI), or Group Policy.

**Note**  
UE-V does not synchronize Windows app settings if the domain users link their sign-in credentials to their Microsoft account. This linking synchronizes settings to Microsoft OneDrive so UE-V only synchronizes the desktop applications.

 

## Microsoft account linking


Settings synchronization via OneDrive is new to Windows 8 when you are signed in with a Microsoft account or if you link your Microsoft account to your domain account. If a domain user uses UE-V and has signed in to a Microsoft account, then…

-   UE-V only synchronizes settings for desktop applications

-   Microsoft account handles Windows app settings and Windows desktop settings

## Company Settings Center


You can provide your users with some control over which settings are synchronized through an application in UE-V 2 called Company Settings Center. Company Settings Center is installed along with the UE-V Agent, and users can access it from Control Panel, the **Start** menu or **Start** screen, and from the UE-V notification area icon.

Company Settings Center displays which settings are synchronized and lets users see the synchronization status of UE-V. If you let them, users can use Company Settings Center to select which settings to synchronize. They can also click the **Sync Now** button to synchronize all settings immediately.






## Related topics


[Get Started with UE-V 2.x](get-started-with-ue-v-2x-new-uevv2.md)

[Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md)

[Microsoft User Experience Virtualization (UE-V) 2.0 Release Notes](microsoft-user-experience-virtualization--ue-v--20-release-notesuevv2.md)

 

 





