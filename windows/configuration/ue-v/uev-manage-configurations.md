---
title: Manage Configurations for UE-V
description: Manage Configurations for UE-V
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


# Manage Configurations for UE-V

**Applies to**
-   Windows 10, version 1607

In the course of the User Experience Virtualization (UE-V) lifecycle, you have to manage the configuration of the UE-V service and also manage storage locations for resources such as settings package files. The following topics provide guidance for managing these UE-V resources.

## Configuring UE-V by using Group Policy Objects

You can use Group Policy Objects to modify the settings that define how UE-V synchronizes settings on computers.

[Configuring UE-V with Group Policy Objects](uev-configuring-uev-with-group-policy-objects.md)

## Configuring UE-V with System Center Configuration Manager

You can use System Center Configuration Manager to manage the UE-V service by using the UE-V Configuration Pack.

[Configuring UE-V with System Center Configuration Manager](uev-configuring-uev-with-system-center-configuration-manager.md)

## Administering UE-V with PowerShell and WMI

UE-V provides Windows PowerShell cmdlets, which can help administrators perform various UE-V tasks.

[Administering UE-V with Windows PowerShell and WMI](uev-administering-uev-with-windows-powershell-and-wmi.md)

## Examples of configuration settings for UE-V

Here are some examples of UE-V configuration settings:

-   **Settings Storage Path:** Specifies the location of the file share that stores the UE-V settings.

-   **Settings Template Catalog Path:** Specifies the Universal Naming Convention (UNC) path that defines the location that was checked for new settings location templates.

-   **Register Microsoft Templates:** Specifies whether the default Microsoft templates should be registered during installation.

-   **Synchronization Method:** Specifies whether UE-V uses the sync provider or "none". The "SyncProvider" supports computers that are disconnected from the network. "None" applies when the computer is always connected to the network. For more information about the Sync Method, see [Sync Methods for UE-V](uev-sync-methods.md).

-   **Synchronization Timeout:** Specifies the number of milliseconds that the computer waits before time-out when it retrieves the user settings from the settings storage location.

-   **Synchronization Enable:** Specifies whether the UE-V settings synchronization is enabled or disabled.

-   **Maximum Package Size:** Specifies a settings package file threshold size in bytes at which the UE-V service reports a warning.

-   **Don’t Sync Windows App Settings:** Specifies that UE-V should not synchronize Windows apps.

-   **Enable/Disable First Use Notification:** Specifies whether UE-V displays a dialog box the first time that the UE-V service runs on a user’s computer.





## Related topics

[Administering UE-V](uev-administering-uev.md)

[Deploy Required UE-V Features](uev-deploy-required-features.md)

[Use UE-V with custom applications](uev-deploy-uev-for-custom-applications.md)
