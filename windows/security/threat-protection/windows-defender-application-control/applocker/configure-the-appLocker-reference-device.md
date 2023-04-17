---
title: Configure the AppLocker reference device (Windows)
description: This topic for the IT professional describes the steps to create an AppLocker policy platform structure on a reference computer.
ms.assetid: 034bd367-146d-4956-873c-e1e09e6fefee
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Configure the AppLocker reference device

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for the IT professional describes the steps to create an AppLocker policy platform structure on a reference computer.

An AppLocker reference device that is used for the development and deployment of AppLocker policies should mimic the directory structure and corresponding applications in the organizational unit (OU) or business group for the production environment. On a reference device, you can:

-   Maintain an application list for each business group.
-   Develop AppLocker policies by creating individual rules or by creating a policy by automatically generating rules.
-   Create the default rules to allow the Windows system files to run properly.
-   Run tests and analyze the event logs to determine the effect of the policies that you intend to deploy.

The reference device doesn't need to be joined to a domain, but it must be able to import and export AppLocker policies in XML format. The reference computer must be running one of the supported editions of Windows as listed in [Requirements to use AppLocker](requirements-to-use-applocker.md).

>**Warning:**  Do not use operating system snapshots when creating AppLocker rules. If you take a snapshot of the operating system, install an app, create AppLocker rules, and then revert to a clean snapshot and repeat the process for another app, there is a chance that duplicate rule GUIDs can be created. If duplicate GUIDs are present, AppLocker policies will not work as expected.
 
**To configure a reference device**

1.  If the operating system isn't already installed, install one of the supported editions of Windows on the device.

    >**Note:**  If you have the Group Policy Management Console (GPMC) installed on another device to test your implementation of AppLocker policies, you can export the policies to that device
     
2.  Configure the administrator account.

    To update local policies, you must be a member of the local Administrators group. To update domain policies, you must be a member of the Domain Admins group or have been delegated privileges to use Group Policy to update a Group Policy Object (GPO).

3.  Install all apps that run in the targeted business group or OU by using the same directory structure.

    The reference device should be configured to mimic the structure of your production environment. It depends on having the same apps in the same directories to accurately create the rules.

### See also

-   After you configure the reference computer, you can create the AppLocker rule collections. You can build, import, or automatically generate the rules. For procedures to do this task, see [Working with AppLocker rules](working-with-applocker-rules.md).
-   [Use a reference device to create and maintain AppLocker policies](use-a-reference-computer-to-create-and-maintain-applocker-policies.md)
 
 
