---
title: Configuring UE-V with Group Policy Objects
description: In this article, learn how to configure User Experience Virtualization (UE-V) with Group Policy objects.
author: aczechowski
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: aaroncz
ms.topic: article
---


# Configuring UE-V with Group Policy Objects

**Applies to**
-   Windows 10, version 1607

Some User Experience Virtualization (UE-V) Group Policy settings can be defined for computers, and other Group Policy settings can be defined for users. The Group Policy administrative templates for these settings are included in Windows 10, version 1607. 


The following policy settings can be configured for UE-V.

**Group Policy settings**

|Group Policy setting name|Target|Group Policy setting description|Configuration options|
|--- |--- |--- |--- |
|Do not use the sync provider|Computers and Users|By using this Group Policy setting, you can configure whether UE-V uses the sync provider feature. This policy setting also lets you enable notification to appear when the import of user settings is delayed.|Enable this setting to configure the UE-V service not to use the sync provider.|
|First Use Notification|Computers Only|This Group Policy setting enables a notification in the notification area that appears when the UE-V service runs for the first time.|The default is enabled.|
|Synchronize Windows settings|Computers and Users|This Group Policy setting configures the synchronization of Windows settings.|Select which Windows settings synchronize between computers.<br>By default, Windows themes, desktop settings, and Ease of Access settings synchronize settings between computers of the same operating system version.|
|Settings package size warning threshold|Computers and Users|This Group Policy setting lets you configure the UE-V service to report when a settings package file size reaches a defined threshold.|Specify the preferred threshold for settings package sizes in kilobytes (KB).<br>By default, the UE-V service does not have a package file size threshold.|
|Settings storage path|Computers and Users|This Group Policy setting configures where the user settings are to be stored.|Enter a Universal Naming Convention (UNC) path and variables such as \Server\SettingsShare%username%.|
|Settings template catalog path|Computers Only|This Group Policy setting configures where custom settings location templates are stored. This policy setting also configures whether the catalog is to be used to replace the default Microsoft templates that are installed with the UE-V service.|Enter a Universal Naming Convention (UNC) path such as \Server\TemplateShare or a folder location on the computer.<br>Select the check box to replace the default Microsoft templates.|
|Sync settings over metered connections|Computers and Users|This Group Policy setting defines whether UE-V synchronizes settings over metered connections.|By default, the UE-V service does not synchronize settings over a metered connection.|
|Sync settings over metered connections even when roaming|Computers and Users|This Group Policy setting defines whether UE-V synchronizes settings over metered connections outside of the home provider network, for example, when the data connection is in roaming mode.|By default, UE-V does not synchronize settings over a metered connection when it is in roaming mode.|
|Synchronization timeout|Computers and Users|This Group Policy setting configures the number of milliseconds that the computer waits before a time-out when it retrieves user settings from the remote settings location. If the remote storage location is unavailable, and the user does not use the sync provider, the application start is delayed by this many milliseconds.|Specify the preferred synchronization time-out in milliseconds. The default value is 2000 milliseconds.|
|Tray Icon|Computers Only|This Group Policy setting enables the User Experience Virtualization (UE-V) tray icon.|This setting only has an effect for UE-V 2.x and earlier. It has no effect for UE-V in Windows 10, version 1607.|
|Use User Experience Virtualization (UE-V)|Computers and Users|This Group Policy setting lets you enable or disable User Experience Virtualization (UE-V).|This setting only has an effect for UE-V 2.x and earlier. For UE-V in Windows 10, version 1607, use the **Enable UE-V** setting.|
|Enable UE-V|Computers and Users|This policy setting allows you to enable or disable User Experience Virtualization (UE-V) feature. Reboot is needed for enable to take effect.|This setting only has an effect for UE-V in Windows 10, version 1607. For UE-V 2.x and earlier, choose the **Use User Experience Virtualization (UE-V)** setting.|

>[!NOTE]
>In addition, Group Policy settings are available for many desktop applications and Windows apps. You can use these settings to enable or disable settings synchronization for specific applications.

**Windows App Group Policy settings**

|Group Policy setting name|Target|Group Policy setting description|Configuration options|
|--- |--- |--- |--- |
|Do not synchronize Windows Apps|Computers and Users|This Group Policy setting defines whether the UE-V service synchronizes settings for Windows apps.|The default is to synchronize Windows apps.|
|Windows App List|Computer and User|This setting lists the family package names of the Windows apps and states expressly whether UE-V synchronizes that app’s settings.|You can use this setting to specify that settings of an app are never synchronized by UE-V, even if the settings of all other Windows apps are synchronized.|
|Sync Unlisted Windows Apps|Computer and User|This Group Policy setting defines the default settings sync behavior of the UE-V service for Windows apps that are not explicitly listed in the Windows app list.|By default, the UE-V service only synchronizes settings of those Windows apps that are included in the Windows app list.|

For more information about synchronizing Windows apps, see [Windows App List](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md#win8applist).

**To configure computer-targeted Group Policy settings**

1.  Use the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) on the computer that acts as a domain controller to manage Group Policy settings for UE-V computers. Navigate to **Computer configuration**, select **Policies**, select **Administrative Templates**, click **Windows Components**, and then select **Microsoft User Experience Virtualization**.

2.  Select the Group Policy setting to be edited.

**To configure user-targeted Group Policy settings**

1.  Use the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) tool in Microsoft Desktop Optimization Pack (MDOP) on the domain controller computer to manage Group Policy settings for UE-V. Navigate to **User configuration**, select **Policies**, select **Administrative Templates**, click **Windows Components**, and then select **Microsoft User Experience Virtualization**.

2.  Select the edited Group Policy setting.

The UE-V service uses the following order of precedence to determine synchronization.

**Order of precedence for UE-V settings**

1.  User-targeted settings that are managed by Group Policy settings - These configuration settings are stored in the registry key by Group Policy under `HKEY_CURRENT_USER\Software\Policies\Microsoft\Uev\Agent\Configuration`.

2.  Computer-targeted settings that are managed by Group Policy settings - These configuration settings are stored in the registry key by Group Policy under `HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Uev\Agent\Configuration`.

3.  Configuration settings that are defined by the current user by using Windows PowerShell or Windows management Instrumentation (WMI) - These configuration settings are stored by the UE-V service under this registry location: `HKEY_CURRENT_USER\Software\Microsoft\Uev\Agent\Configuration`.

4.  Configuration settings that are defined for the computer by using Windows PowerShell or WMI. These configuration settings are stored by the UE-V service under this registry location: `HKEY_LOCAL_MACHINE\Software\Microsoft\Uev\Agent\Configuration`.





## Related topics


[Administering UE-V](uev-administering-uev.md)

[Manage Configurations for UE-V](uev-manage-configurations.md)
