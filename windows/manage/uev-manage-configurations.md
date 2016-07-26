---
title: Manage Configurations for UE-V 2.x
description: Manage Configurations for UE-V 2.x
author: jamiejdt
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Manage Configurations for UE-V 2.x


In the course of the Microsoft User Experience Virtualization (UE-V) lifecycle, you have to manage the configuration of the UE-V Agent and also manage storage locations for resources such as settings package files. You might have to perform other tasks, for example, configuring the Company Settings Center to define how users interact with UE-V. The following topics provide guidance for managing these UE-V resources.

## Configuring UE-V 2.x by using Group Policy Objects


You can use Group Policy Objects to modify the settings that define how UE-V synchronizes settings on computers.

[Configuring UE-V 2.x with Group Policy Objects](uev-configuring-uev-with-group-policy-objects.md)

## Configuring UE-V 2.x with System Center Configuration Manager 2012


You can use System Center 2012 Configuration Manager to manage the UE-V Agent by using the UE-V 2 Configuration Pack.

[Configuring UE-V 2.x with System Center Configuration Manager 2012](uev-configuring-uev-with-system-center-configuration-manager-2012.md)

## Administering UE-V 2.x with PowerShell and WMI


UE-V provides Windows PowerShell cmdlets, which can help administrators perform various UE-V tasks.

[Administering UE-V 2.x with Windows PowerShell and WMI](uev-administering-uev-with-windows-powershell-and-wmi.md)

## Configuring the Company Settings Center for UE-V 2.x


You can configure the Company Settings Center that is installed by using the UE-V Agent to define how users interact with UE-V.

[Configuring the Company Settings Center for UE-V 2.x](uev-configuring-the-company-settings-center.md)

## Examples of configuration settings for UE-V 2.x


Here are some examples of UE-V configuration settings:

-   **Settings Storage Path:** Specifies the location of the file share that stores the UE-V settings.

-   **Settings Template Catalog Path:** Specifies the Universal Naming Convention (UNC) path that defines the location that was checked for new settings location templates.

-   **Register Microsoft Templates:** Specifies whether the default Microsoft templates should be registered during installation.

-   **Synchronization Method:** Specifies whether UE-V uses the sync provider or "none". The "SyncProvider" supports computers that are disconnected from the network. "None" applies when the computer is always connected to the network. For more information about the Sync Method, see [Sync Methods for UE-V 2.x](uev-sync-methods.md).

-   **Synchronization Timeout:** Specifies the number of milliseconds that the computer waits before time-out when it retrieves the user settings from the settings storage location.

-   **Synchronization Enable:** Specifies whether the UE-V settings synchronization is enabled or disabled.

-   **Maximum Package Size:** Specifies a settings package file threshold size in bytes at which the UE-V Agent reports a warning.

-   **Don’t Sync Windows App Settings:** Specifies that UE-V should not synchronize Windows apps.

-   **Enable/Disable First Use Notification:** Specifies whether UE-V displays a dialog box the first time that the UE-V Agent runs on a user’s computer.

-   **Enable/Disable Tray Icon:** Specifies whether UE-V displays an icon in the notification area and any notifications associated with it. The icon provides a link to the Company Settings Center.

-   **Custom Contact IT Hyperlink:** Defines the path, text, and description for the **Contact IT** hyperlink in the Company Settings Center.

## Have a suggestion for UE-V?


Add or vote on suggestions [here](http://uev.uservoice.com/forums/280428-microsoft-user-experience-virtualization). For UE-V issues, use the [UE-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-us/home?forum=mdopuev&filter=alltypes&sort=lastpostdesc).

## Related topics


[Administering UE-V 2.x](uev-administering-uev.md)

[Deploy Required Features for UE-V 2.x](uev-deploy-required-features.md)

[Deploy UE-V 2.x for Custom Applications](uev-deploy-uev-for-custom-applications.md)

 

 





