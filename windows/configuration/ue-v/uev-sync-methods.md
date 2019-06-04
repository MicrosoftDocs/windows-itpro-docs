---
title: Sync Methods for UE-V
description: Sync Methods for UE-V
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---

# Sync Methods for UE-V

**Applies to**
-   Windows 10, version 1607

The User Experience Virtualization (UE-V) service lets you synchronize users’ application and Windows settings with the settings storage location. The *Sync Method* configuration defines how the UE-V service uploads and downloads those settings to the settings storage location. UE-V includes a SyncMethod called the *SyncProvider*. For more information about trigger events that start the synchronization of application and Windows settings, see [Sync Trigger Events for UE-V](uev-sync-trigger-events.md).

## SyncMethod Configuration

This table provides a description of each SyncMethod configuration:

| **SyncMethod Configuration** | **Description**     |
|------------------------------|---------------------|
| SyncProvider (Default)       | Settings changes for a specific application or for global Windows desktop settings are saved locally to a cache folder. These changes are then synchronized with the settings storage location when a synchronization trigger event takes place. Pushing out changes will save the local changes to the settings storage path.<br>This default setting is the gold standard for computers. This option attempts to synchronize the setting and times out after a short delay to ensure that the application or operating system startup isn’t delayed for a long period of time.<br>This functionality is also tied to the Scheduled task – Sync Controller Application. The administrator controls the frequency of the Scheduled task. By default, computers synchronize their settings every 30 min after logging on.     |
| External                     | This configuration method specifies that if UE-V settings are written to a local folder on the user computer, then any external sync engine (such as OneDrive for Business, Work Folders, Sharepoint, or Dropbox) can be used to apply these settings to the different computers that users access.    |
| None                         | This configuration setting is designed for the Virtual Desktop Infrastructure (VDI) and Streamed Application experience primarily. This setting should be used on computers running the Windows Server operating system in a datacenter, where the connection will always be available.<br>Any settings changes are saved directly to the server. If the network connection to the settings storage path is not available, then the settings changes are cached on the device and are synchronized the next time that the Sync Provider runs. If the settings storage path is not found and the user profile is removed from a pooled VDI environment on logoff, then these settings changes are lost, and the user must reapply the change when the computer can again reach the settings storage path.<br>Apps and OS will wait indefinitely for the location to be present. This could cause App load or OS logon time to dramatically increase if the location is not found. |

You can configure the sync method in these ways:

-   Through [Group Policy](uev-configuring-uev-with-group-policy-objects.md) settings

-   With the [System Center Configuration Pack](uev-configuring-uev-with-system-center-configuration-manager.md) for UE-V

-   With [Windows PowerShell or Windows Management Instrumentation (WMI)](uev-administering-uev-with-windows-powershell-and-wmi.md)





## Related topics

[Deploy Required UE-V Features](uev-deploy-required-features.md)

[Technical Reference for UE-V](uev-technical-reference.md)
