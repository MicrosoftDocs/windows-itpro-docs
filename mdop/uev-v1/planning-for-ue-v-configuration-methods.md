---
title: Planning for UE-V Configuration Methods
description: Planning for UE-V Configuration Methods
author: levinec
ms.assetid: 57bce7ab-1be5-434b-9ee5-c96026bbe010
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Planning for UE-V Configuration Methods


Microsoft User Experience Virtualization (UE-V) configurations determine how settings are synchronized throughout the enterprise. This topic describes how UE-V configurations are created to help you formulate a configuration plan that best meets your business requirements.

## Configuration methods for UE-V


You can configure UE-V before, during, or after agent installation, depending on the configuration method that you use.

**Group Policy:** existing Group Policy infrastructure can be used to configure UE-V before or after UE-V Agent deployment. The UE-V ADMX template enables the central management of common UE-V Agent configuration options, and it includes settings to configure UE-V synchronization. Network environments that use Group Policy can preconfigure UE-V in anticipation of agent deployment.

[Configuring UE-V with Group Policy Objects](configuring-ue-v-with-group-policy-objects.md)

[Installing the UE-V Group Policy ADMX Templates](installing-the-ue-v-group-policy-admx-templates.md)

**Command-line or Batch Script Installation:** parameters that are used with the deployment of the UE-V Agent allow the configuration of many UE-V settings. Electronic software distribution systems, such as System Center Configuration Manager, use these parameters to configure their clients when deploying and installing the UE-V Agent software. For a list of installation parameters and sample installation scripts, see [Deploying the UE-V Agent](deploying-the-ue-v-agent.md).

**PowerShell and WMI:** scripted commands using PowerShell or WMI can be used to modify configurations after the UE-V Agent has been installed. For a list of PowerShell and WMI commands, see [Managing the UE-V 1.0 Agent and Packages with PowerShell and WMI](managing-the-ue-v-10-agent-and-packages-with-powershell-and-wmi.md).

**Edit Registry Settings:** UE-V settings are stored in the registry and can be modified by using any tool that can modify registry settings, such as RegEdit.

**Note**  
Registry modification can result in data loss or the computer becoming unresponsive. We recommend that you use other configuration methods.

 

### UE-V configuration settings

The following are examples of UE-V configuration settings:

-   **Setting Storage Path:** specifies the location of the file share that stores the UE-V settings.

-   **Settings Template Catalog Path:** specifies the Universal Naming Convention (UNC) path that defines the location that was checked for new settings location templates.

-   **Register Microsoft Templates:** specifies whether the default Microsoft templates should be registered during installation.

-   **Synchronization Method:** specifies whether the Windows Offline Files feature is used for offline support.

-   **Synchronization Timeout:** specifies the number of milliseconds that the computer waits before timeout when retrieving the user settings from the settings storage location.

-   **Synchronization Enable:** specifies whether the UE-V settings synchronization is enabled or disabled.

-   **Maximum Package Size:** specifies a settings package file threshold size in bytes at which the UE-V Agent reports a warning.

## Related topics


[Planning for UE-V 1.0](planning-for-ue-v-10.md)

[Planning for UE-V Configuration](planning-for-ue-v-configuration.md)

 

 





