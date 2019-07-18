---
title: Deploying UE-V Settings Location Templates for UE-V 1.0
description: Deploying UE-V Settings Location Templates for UE-V 1.0
author: levinec
ms.assetid: 7e0cc553-14f7-40fa-828a-281c8d2d1934
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Deploying UE-V Settings Location Templates for UE-V 1.0


Microsoft User Experience Virtualization (UE-V) uses settings location templates (XML files) that define the settings that are captured and applied by User Experience Virtualization. UE-V includes a set of standard templates, as well as a tool, the UE-V Generator, which allows you to create custom settings location templates. After you create a settings location template, you should test it to ensure that the application settings roam correctly in a test environment. You can then safely deploy the settings location template to computers in the enterprise.

Settings location templates can be deployed by using enterprise software distribution (ESD), Group Policy preferences, or by configuring a UE-V settings template catalog. Templates that are deployed by using an ESD or Group Policy must be registered through UE-V WMI or PowerShell. Templates that are stored in the settings template catalog location are automatically registered by the UE-V agent.

## Deploy the settings location templates with a settings template catalog path


The UE-V settings location template catalog path can be defined by using the following methods: Group Policy, the agent install command-line parameters, WMI, or PowerShell. After the template catalog path has been defined, the UE-V agent retrieves the new or updated templates from this location. The UE-V agent checks this location once each day and updates its synchronization behavior based on the templates found in this folder. Templates that have been added or updated in this folder since the last check are registered by the UE-V agent. The UE-V agent also unregisters templates that have been removed from this folder. Templates are registered and unregistered one time per day by the task scheduler.

**To use settings template catalog path to deploy UE-V settings location templates**

1.  Navigate to the network share folder that is defined as the settings template catalog.

2.  Add, remove, or update settings location templates in the settings template catalog to reflect the desired UE-V agent template configuration for UE-V computers.

3.  Templates on computers are updated daily based on changes to the settings template catalog.

4.  Open an elevated command prompt and navigate to **%program files%\\Microsoft user Experience Virtualization \\ Agent \\ &lt;x86 or x64 &gt;**, and then run **ApplySettingsTemplateCatalog.exe** to manually update templates on a computer that runs the UE-V agent.

## Related topics


[Microsoft User Experience Virtualization (UE-V) 1.0](index.md)

[Deploying UE-V 1.0](deploying-ue-v-10.md)

[Planning Which Applications to Synchronize with UE-V 1.0](planning-which-applications-to-synchronize-with-ue-v-10.md)

 

 





