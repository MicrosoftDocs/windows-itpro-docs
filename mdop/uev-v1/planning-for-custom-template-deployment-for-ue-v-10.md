---
title: Planning for Custom Template Deployment for UE-V 1.0
description: Planning for Custom Template Deployment for UE-V 1.0
author: dansimp
ms.assetid: be76fc9a-31ca-4290-af11-7640dcb87d50
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for Custom Template Deployment for UE-V 1.0


Microsoft User Experience Virtualization (UE-V) uses settings location templates (XML files) that define the settings that are captured and applied by UE-V. You can use the UE-V Generator to create custom settings location templates that let users roam the settings of applications other than those that are included in the default UE-V templates. After you test the custom template to ensure that the application settings roam correctly in a test environment, you can deploy these settings location templates to computers in the enterprise.

You can deploy your custom settings location templates with an existing deployment infrastructure, such as Enterprise Software Distribution (ESD), with Group Policy preferences, or by configuring a UE-V settings template catalog. Templates that are deployed by using ESD or Group Policy must be registered with UE-V WMI or PowerShell.

## Settings template catalog


The User Experience Virtualization settings template catalog is a folder path on UE-V computers or a Server Message Block (SMB) network share that stores all the custom settings location templates. The UE-V agent retrieves new or updated templates from this location. The UE-V agent checks this location once each day and updates its synchronization behavior based on the templates in this folder. Templates that were added or updated in this folder since the last time that the folder was checked are registered by the UE-V agent. The UE-V agent deregisters templates that are removed from this folder. By default, templates are registered and unregistered one time per day at 3:30 A.M. local time by the task scheduler. For more information about the UE-V tasks, see [Changing the Frequency of UE-V Scheduled Tasks](changing-the-frequency-of-ue-v-scheduled-tasks.md).

You can configure the settings template catalog path by using the install command-line options, Group Policy, WMI, or PowerShell. Templates that are stored at the settings template catalog path are automatically registered and unregistered by a scheduled task. You can customize this scheduled task as needed.

## Replace the default Microsoft templates


The UE-V agent installs a default group of settings location templates for common Microsoft applications and Windows settings. If your enterprise needs customized versions of these templates, the UE-V agent can be configured to use a settings template catalog and you should then replace the default Microsoft templates.

During the installation of the UE-V agent, the command-line parameter, `RegisterMSTemplates`, can be used to disable the registration of the default Microsoft templates. For more information about how to set the UE-V parameters, see [Planning for UE-V Configuration Methods](planning-for-ue-v-configuration-methods.md).

When you use Group Policy to configure the settings template catalog path, you can choose to replace the default Microsoft templates. If you configure the policy settings to replace the default Microsoft templates, all of the default Microsoft templates that are installed by the UE-V agent will be deleted from the computer, and only the templates that are located in the settings template catalog will be used. The UE-V Agent configuration setting `RegisterMSTemplates` must be set to true in order to override the default Microsoft template.

**Note**  
If you disable this policy setting after it has been enabled, the UE-V agent will not restore the default Microsoft templates.

 

If there are customized templates in the settings template catalog that use the same ID as the default Microsoft templates, and the UE-V agent is not configured to replace the default Microsoft templates, the Microsoft templates in the catalog will be ignored.

You can also replace the default templates by using the UE-V PowerShell features. To replace the default Microsoft Template with PowerShell, unregister all of the default Microsoft templates, and then register the customized templates.

**Note**  
Old settings packages remain in the settings storage location even if new settings templates are deployed for an application. These packages are not read by the agent, but neither are they automatically deleted.

 

## Related topics


[Planning for UE-V 1.0](planning-for-ue-v-10.md)

[Planning Which Applications to Synchronize with UE-V 1.0](planning-which-applications-to-synchronize-with-ue-v-10.md)

[Planning for UE-V Configuration Methods](planning-for-ue-v-configuration-methods.md)

Planning for Custom Template Deployment
 

 





