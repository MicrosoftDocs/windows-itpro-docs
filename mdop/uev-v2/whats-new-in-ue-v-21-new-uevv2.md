---
title: What's New in UE-V 2.1
description: What's New in UE-V 2.1
author: levinec
ms.assetid: 7f385183-7d97-4602-b19a-baa710334ade
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# What's New in UE-V 2.1


User Experience Virtualization 2.1 provides these new features and functionality compared to UE-V 2.0. The [Microsoft User Experience Virtualization (UE-V) 2.1 Release Notes](microsoft-user-experience-virtualization--ue-v--21-release-notesuevv21.md) provide more information about the UE-V 2.1 release.

## Office 2013 Settings Location Template


UE-V 2.1 includes the Microsoft Office 2013 settings location template with improved Outlook signature support. In UE-V 2.1, the signature data synchronizes between user devices. We’ve added synchronization of default signature settings for new, reply, and forwarded emails. Customers no longer have to choose the default signature settings.

**Note**  
An Outlook profile must be created for any device on which a user wants to sync their Outlook signature. If the profile is not already created, the user can create one and then restart Outlook on that device to enable signature synchronization.

 

Previously UE-V included Microsoft Office 2010 settings location templates that were automatically distributed and registered with the UE-V Agent. UE-V 2.1 works with Office 365 to determine whether Office 2013 settings are roamed by Office 365. If settings are roamed by Office 365 they are not roamed by UE-V. [Overview of user and roaming settings for Office 2013](https://go.microsoft.com/fwlink/p/?LinkID=391220) provides more information.

To enable settings synchronization using UE-V 2.1, do one of the following:

-   Use Group Policy to disable Office 365 synchronization

-   Do not enable the Office 365 synchronization experience during Office 2013 installation

UE-V 2.1 ships [Office 2013 and Office 2010 templates](https://technet.microsoft.com/library/dn458932.aspx#autosyncsettings). This release removes the Office 2007 templates. Users can still use Office 2007 templates from UE-V 2.0 or earlier and can still get the templates from the UE-V template gallery located [here](https://go.microsoft.com/fwlink/p/?LinkID=246589).

## Fix for Distributed File System Namespace Users


UE-V has improved Distributed File System Namespace (DFSN) support by adding a UE-V configuration called SyncProviderPingEnabled. Disabling this configuration using PowerShell or WMI allows users to disable the UE-V ping. The UE-V ping causes an error when using DFSN servers because these servers do not respond to pings. The non-response prevents UE-V from synchronizing settings. Disabling the UE-V ping allows UE-V synchronization to work normally.

To disable UE-V ping, use this PowerShell cmdlet:

``` syntax
Set-UevConfiguration -DisableSyncProviderPing
```

## Synchronization for Credentials


UE-V 2.1 gives customers the ability to synchronize credentials and certificates stored in the Windows Credential Manager. This component is disabled by default. Enabling this component lets users keep their domain credentials and certificates in sync. Users can sign in one time on a device, and these credentials will roam for that user across all of their UE-V enabled devices. [Manage Credentials with UE-V 2.1](https://technet.microsoft.com/library/dn458932.aspx#creds) provides more information.

**Note**  
In Windows 8 and later, Credential Manager contains web credentials. These credentials are not synchronized between users’ devices.

 

## UE-V and Microsoft Account Synchronization


UE-V detects if “Sync settings with OneDrive”, also known as Microsoft Account synchronization, is on. If the Microsoft Account is not configured to synchronize settings, UE-V synchronizes Windows apps, AppX packages, and Windows desktop settings between devices. This lets users access their Store apps, music, pictures and other Microsoft Account-enabled applications without syncing outside of the enterprise firewall. UE-V checks whether Group Policy will stop synchronizing settings with OneDrive or if the user disables **Sync your settings on this computer** in the user controls.

## Support for the SyncMethod External


A new [SyncMethod configuration](https://technet.microsoft.com/library/dn554321.aspx) called **External** specifies that if UE-V settings are written to a local folder on the user computer, then any external sync engine (such as OneDrive for Business, Work Folders, Sharepoint, or Dropbox) can be used to apply these settings to the different computers that users access.

## Enhanced Support for VDI Mode


UE-V 2.1 includes [support for VDI sessions](https://technet.microsoft.com/library/dn458932.aspx#vdi) that are shared among end users. As an administrator, you can register and configure a special VDI template, which ensures that UE-V keeps all of its functionality intact for non-persistent VDI sessions.

**Note**  
If you do not enable VDI mode for non-persistent VDI sessions, certain features do not work, such as back-up/restore and LKG.

 

## Administrative Backup and Restore


You can restore additional settings when a user adopts a new device by putting a settings location template in **backup** or **roam (default)** profile using the Set-UevTemplateProfile PowerShell cmdlet. This lets computer settings sync to the new computer, in addition to user settings. Templates assigned to the backup profile are backed up for that device and configured on a per-device basis. [Manage Administrative Backup and Restore in UE-V 2.x](manage-administrative-backup-and-restore-in-ue-v-2x-new-topic-for-21.md) provides more information.

## Synchronization for Additional Windows Settings


UE-V now synchronizes touch keyboard personalization, the spelling dictionary, and enables the App Switching for recent apps and screen edge settings to synchronize between Windows 8 and Windows 8.1 devices.






## Related topics


[Get Started with UE-V 2.x](get-started-with-ue-v-2x-new-uevv2.md)

[Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md)

[Microsoft User Experience Virtualization (UE-V) 2.1 Release Notes](microsoft-user-experience-virtualization--ue-v--21-release-notesuevv21.md)

 

 





