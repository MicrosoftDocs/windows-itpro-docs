---
title: Tools to use with AppLocker (Windows 10)
description: This topic for the IT professional describes the tools available to create and administer AppLocker policies.
ms.assetid: db2b7cb3-7643-4be5-84eb-46ba551e1ad1
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Tools to use with AppLocker

**Applies to**
- Windows 10
- Windows Server

This topic for the IT professional describes the tools available to create and administer AppLocker policies.

The following tools can help you administer the application control policies created by using AppLocker on the local device or by using Group Policy. For info about the basic requirements for using AppLocker, see [Requirements to use AppLocker](requirements-to-use-applocker.md).

-   **AppLocker Local Security Policy MMC snap-in**

    The AppLocker rules can be maintained by using the Local Security Policy snap-in (secpol.msc) of the Microsoft Management Console (MMC). For procedures to create, modify, and delete AppLocker rules, see [Working with AppLocker rules](working-with-applocker-rules.md).

-   **Generate Default Rules tool**

    AppLocker includes default rules for each rule collection accessed through the Local Security Policy snap-in. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection. For info about how to use this tool, see [Create AppLocker default rules](create-applocker-default-rules.md). For a list of the default rules, see [AppLocker default rules](working-with-applocker-rules.md#applocker-default-rules).

-   **Automatically Generate AppLocker Rules wizard**

    By using the Local Security Policy snap-in, you can automatically generate rules for all files within a folder. The wizard will scan the specified folder and create the condition types that you choose for each file in that folder. For info about how to use this wizard, see [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md).

-   **Group Policy**

    You can edit an AppLocker policy by adding, changing, or removing rules by using the Group Policy Management Console (GPMC).

    If you want additional features to manage AppLocker policies, such as version control, use Group Policy management software that allows you to create versions of Group Policy Objects (GPOs). An example of this type of software is the Advanced Group Policy Management feature from the Microsoft Desktop Optimization Pack.

-   **Remote Server Administration Tools (RSAT)**

    You can use a device with a supported operating system that has the Remote Server Administration Tools (RSAT) installed to create and maintain AppLocker policies.

-   **Event Viewer**

    The AppLocker log contains information about applications that are affected by AppLocker rules. For info about using Event Viewer to review the AppLocker logs, see [Using Event Viewer with AppLocker](using-event-viewer-with-applocker.md), and [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).

-   **AppLocker PowerShell cmdlets**

    The AppLocker Windows PowerShell cmdlets are designed to streamline the administration of AppLocker policy. They can be used to help create, test, maintain, and troubleshoot an AppLocker policy. The cmdlets are intended to be used in conjunction with the AppLocker user interface that is accessed through the Local Security Policy snap-in and the GPMC. For information about the cmdlets, see the [AppLocker PowerShell Command Reference](https://technet.microsoft.com/itpro/powershell/windows/applocker/applocker).

## Related topics

- [AppLocker technical reference](applocker-technical-reference.md)
