---
title: Key features in MDT (Windows 10)
description: The Microsoft Deployment Toolkit (MDT) has been in existence since 2003, when it was first introduced as Business Desktop Deployment (BDD) 1.0.
ms.assetid: 858e384f-e9db-4a93-9a8b-101a503e4868
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deploy, feature, tools, upgrade, migrate, provisioning
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
author: greg-lindsay
ms.date: 07/27/2017
ms.topic: article
---

# Key features in MDT

**Applies to**
-   Windows 10

The Microsoft Deployment Toolkit (MDT) has been in existence since 2003, when it was first introduced as Business Desktop Deployment (BDD) 1.0. The toolkit has evolved, both in functionality and popularity, and today it is considered fundamental to Windows operating system and enterprise application deployment.

MDT has many useful features, the most important of which are:
-   **Windows Client support.** Supports Windows 7, Windows 8, Windows 8.1, and Windows 10.
-   **Windows Server support.** Supports Windows Server 2008 R2, Windows Server 2012, and Windows Server 2012 R2.
-   **Additional operating systems support.** Supports Windows Thin PC and Windows Embedded POSReady 7, as well as Windows 8.1 Embedded Industry.
-   **UEFI support.** Supports deployment to machines using Unified Extensible Firmware Interface (UEFI) version 2.3.1.
-   **GPT support.** Supports deployment to machines that require the new GUID (globally unique identifier) partition table (GPT) format. This is related to UEFI.
-   **Enhanced Windows PowerShell support.** Provides support for running PowerShell scripts.

    ![figure 2](../images/mdt-05-fig02.png)

    Figure 2. The deployment share mounted as a standard PSDrive allows for administration using PowerShell.

-   **Add local administrator accounts.** Allows you to add multiple user accounts to the local Administrators group on the target computers, either via settings or the deployment wizard.
-   **Automated participation in CEIP and WER.** Provides configuration for participation in Windows Customer Experience Improvement Program (CEIP) and Windows Error Reporting (WER).
-   **Deploy Windows RE.** Enables deployment of a customized Windows Recovery Environment (Windows RE) as part of the task sequence.
-   **Deploy to VHD.** Provides ready-made task sequence templates for deploying Windows into a virtual hard disk (VHD) file.
-   **Improved deployment wizard.** Provides additional progress information and a cleaner UI for the Lite Touch Deployment Wizard.
-   **Monitoring.** Allows you to see the status of currently running deployments.
-   **Apply GPO Pack.** Allows you to deploy local group policy objects created by Microsoft Security Compliance Manager (SCM).
-   **Partitioning routines.** Provides improved partitioning routines to ensure that deployments work regardless of the current hard drive structure.
-   **Offline BitLocker.** Provides the capability to have BitLocker enabled during the Windows Preinstallation Environment (Windows PE) phase, thus saving hours of encryption time.
-   **USMT offline user-state migration.** Provides support for running the User State Migration Tool (USMT) capture offline, during the Windows PE phase of the deployment.

    ![figure 3](../images/mdt-05-fig03.png)

    Figure 3. The offline USMT backup in action.

-   **Install or uninstall Windows roles or features.** Enables you to select roles and features as part of the deployment wizard. MDT also supports uninstall of roles and features.
-   **Microsoft System Center 2012 Orchestrator integration.** Provides the capability to use Orchestrator runbooks as part of the task sequence.
-   **Support for DaRT.** Supports optional integration of the DaRT components into the boot image.
-   **Support for Office 2013.** Provides added support for deploying Microsoft Office Professional Plus 2013.
-   **Support for Modern UI app package provisioning.** Provisions applications based on the new Windows app package standard, which is used in Windows 8 and later.
-   **Extensibility.** Provides the capability to extend MDT far beyond the built-in features by adding custom scripts, web services, System Center Orchestrator runbooks, PowerShell scripts, and VBScripts.
-   **Upgrade task sequence.** Provides a new upgrade task sequence template that you can use to upgrade existing Windows 7, Windows 8, and Windows 8.1 systems directly to Windows 10, automatically preserving all data, settings, applications, and drivers. For more information about using this new upgrade task sequence, refer to the [Microsoft Deployment Toolkit resource page](https://go.microsoft.com/fwlink/p/?LinkId=618117).

## Related topics

[Prepare for deployment with MDT](prepare-for-windows-deployment-with-mdt.md)

[MDT Lite Touch components](mdt-lite-touch-components.md)
 
 
