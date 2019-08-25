---
title: Administering UE-V 1.0
description: Administering UE-V 1.0
author: levinec
ms.assetid: c399ae8d-c839-4f84-9bfc-adacd8f89f34
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Administering UE-V 1.0


After you have deployed Microsoft User Experience Virtualization (UE-V), you must be able to perform various ongoing administrative tasks. These post-installation tasks are described in the following sections.

## Managing UE-V resources


In the course of the UE-V lifecycle, you will need to manage the configuration of the UE-V agent and also manage storage locations for resources such as settings packages. You might need to perform other tasks such as to restore a user’s settings to their original state from before UE-V was installed in order to recover lost settings. The following topics provide guidance for managing UE-V resources.

### Changing the Frequency of UE-V Scheduled Tasks

You can configure the scheduled tasks that manage when UE-V checks for new, updated, or removed custom settings location templates in the settings template catalog.

[Changing the Frequency of UE-V Scheduled Tasks](changing-the-frequency-of-ue-v-scheduled-tasks.md)

### <a href="" id="sharing-settings-location-templates-with-the-ue-v-template-gallery-"></a>Sharing Settings Location Templates with the UE-V Template Gallery

The UE-V template gallery facilitates the sharing of UE-V settings location templates. The gallery enables you to upload your settings location templates to share with other people and to download templates that other people have created.

[Sharing Settings Location Templates with the UE-V Template Gallery](sharing-settings-location-templates-with-the-ue-v-template-gallery.md)

### Restoring application and Windows settings synchronized with UE-V 1.0

WMI and PowerShell features of UE-V provide the ability to restore settings packages. WMI and PowerShell commands allow you to restore application settings and Windows settings to the settings values that were on the computer the first time the application was started after the UE-V agent was launched.

[Restoring Application and Windows Settings Synchronized with UE-V 1.0](restoring-application-and-windows-settings-synchronized-with-ue-v-10.md)

### Configuring UE-V with Group Policy Objects

You can use Group Policy to modify the settings that define how UE-V synchronizes settings on computers.

[Configuring UE-V with Group Policy Objects](configuring-ue-v-with-group-policy-objects.md)

### Administering UE-V with PowerShell and WMI

You can use PowerShell and WMI to modify the settings that define how UE-V synchronizes settings on computers.

[Managing the UE-V 1.0 Agent and Packages with PowerShell and WMI](managing-the-ue-v-10-agent-and-packages-with-powershell-and-wmi.md)

### Migrating UE-V Settings Packages

You can relocate the user settings packages either when migrating to a new server or for backup purposes.

[Migrating UE-V Settings Packages](migrating-ue-v-settings-packages.md)

## Other resources for this product


[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





